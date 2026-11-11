#lang racket

;; OPCIÓN 1: Devuelve el MONTO del interés ganado (Depósito * Tasa)
;; Esta es la interpretación estándar en ejercicios de este tipo.
(define (calcular-interes deposito)
  (cond
    [(<= deposito 40000) (* deposito 0.035)]
    [(<= deposito 260000) (* deposito 0.04)]
    [else (* deposito 0.045)]))

;; OPCIÓN 2: Devuelve únicamente la TASA de interés asignada
;; Úsala si tu catedrático pidió literalmente solo el porcentaje.
(define (obtener-tasa deposito)
  (cond
    [(<= deposito 40000) 0.035] ; o '3.5%
    [(<= deposito 260000) 0.04] ; o '4.0%
    [else 0.045]))              ; o '4.5%

;; --- Pruebas en consola ---
(displayln "--- Monto de interés ganado ---")
(displayln (calcular-interes 30000))  ; <= 40,000 (3.5%) -> Imprime: 1050.0
(displayln (calcular-interes 100000)) ; <= 260,000 (4%)  -> Imprime: 4000.0
(displayln (calcular-interes 300000)) ; > 260,000 (4.5%) -> Imprime: 13500.0
