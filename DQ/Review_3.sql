/*
=============================================
            Funciones de ventana
=============================================
*/

/*
=============================================
        Ranking de mayores ventas
=============================================
*/
SELECT 
    fecha,
    vendedor,
    monto,
    ROW_NUMBER() OVER (ORDER BY monto DESC) AS ranking
FROM ventas_vendedores
ORDER BY monto DESC;


/*
=============================================
      Porcentaje sobre el total del mes
=============================================
*/
SELECT 
    fecha,
    vendedor,
    monto,
    ROUND(
        (monto::numeric / SUM(monto) OVER (PARTITION BY EXTRACT(YEAR FROM fecha), EXTRACT(MONTH FROM fecha))::numeric) * 100, 
        2
    ) AS porcentaje_del_mes
FROM ventas_vendedores
ORDER BY fecha;


WITH reporte AS (
  SELECT vendedor, SUM(monto) AS monto_total, AVG(monto) AS promedio_venta
  FROM ventas_vendedores
  GROUP BY vendedor
)
SELECT * 
FROM reporte
WHERE promedio_venta > 200.00
ORDER BY monto_total DESC;