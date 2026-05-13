import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      body: Row(
        children: [
          // SIDEBAR (futuro crescimento)
          Container(
            width: 220,
            color: const Color(0xFF0B1220),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                const Icon(
                  Icons.desktop_windows_rounded,
                  color: Colors.blueAccent,
                  size: 32,
                ),

                const SizedBox(height: 12),

                const Text(
                  'Notebook Control',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 30),

                _SideItem(
                  icon: Icons.dashboard,
                  label: 'Dashboard',
                  selected: true,
                ),

                _SideItem(icon: Icons.settings, label: 'Settings'),
              ],
            ),
          ),

          // CONTENT
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'System Monitor',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 24),

                  // CARDS ROW (desktop style)
                  Row(
                    children: const [
                      Expanded(
                        child: _InfoCard(
                          title: "IP do Servidor",
                          value: "192.168.0.10",
                          icon: Icons.language,
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: _InfoCard(
                          title: "Porta",
                          value: "3000",
                          icon: Icons.settings_ethernet,
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: _InfoCard(
                          title: "Status",
                          value: "Online",
                          icon: Icons.circle,
                          valueColor: Colors.greenAccent,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // TERMINAL / LOG AREA (base para seu socket debug)
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFF111C33),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.05),
                        ),
                      ),
                      child: const Text(
                        '> System ready...\n> Waiting connection...\n> Ping interval: 5s',
                        style: TextStyle(
                          color: Colors.white70,
                          fontFamily: 'monospace',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SideItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;

  const _SideItem({
    required this.icon,
    required this.label,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      decoration: BoxDecoration(
        color: selected
            ? Colors.blueAccent.withOpacity(0.15)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, color: selected ? Colors.blueAccent : Colors.white54),
          const SizedBox(width: 10),
          Text(
            label,
            style: TextStyle(color: selected ? Colors.white : Colors.white54),
          ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color? valueColor;

  const _InfoCard({
    required this.title,
    required this.value,
    required this.icon,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF111C33),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: Colors.blueAccent),
          const SizedBox(height: 12),
          Text(
            title,
            style: TextStyle(
              color: Colors.white.withOpacity(0.6),
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(
              color: valueColor ?? Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
