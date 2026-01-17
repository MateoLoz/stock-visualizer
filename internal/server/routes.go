package server

import (
	"net/http"
	"stock-visualizer/internal/handlers"
)

func (s *Server) RegisterRoutes() http.Handler {
	mux := http.NewServeMux()

	// Health Check
	mux.HandleFunc("/health", handlers.HealthHandler)

	// Add more routes here using mux.HandleFunc or standard mux.Handle

	return mux
}
