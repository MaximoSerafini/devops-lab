#!/bin/bash

echo "------ REPORTE DEL SERVIDOR ------"
echo "Fecha y Hora:"
date
echo ""

echo "------ ESPACIO EN DISCO (WSL) ------"
# Muestra solo el sistema de archivos principal para que sea legible
df -h | grep "/$"
echo ""

echo "------ MEMORIA RAM ------"
free -h
echo ""

echo "------ CONTENEDORES ACTIVOS ------"
docker ps --format "table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}"
echo ""
echo "----------------------------------"
