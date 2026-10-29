import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactLink extends StatelessWidget {
  final String title;
  final String value;
  final String iconPath;
  final String url;

  const ContactLink({
    super.key,
    required this.title,
    required this.value,
    required this.iconPath,
    required this.url,
  });

  Future<void> _openLink() async {
    final uri = Uri.parse(url);

    if (!await launchUrl(
      uri,
      mode: LaunchMode.platformDefault,
    )) {
      debugPrint('Could not open $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _openLink,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 8,
        ),
        child: Row(
          children: [
            Image.asset(
              iconPath,
              height: 24,
              width: 24,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.link,
                  color: Color(0xFF00F5A0),
                  size: 24,
                );
              },
            ),
            const SizedBox(width: 10),
            Text(
                    value,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color(0xFF38BDF8),
                      fontSize: 16,
                      fontWeight:FontWeight.bold
                      //decoration: TextDecoration.underline,
                    ),
                  ),
            // Expanded(
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         title,
            //         style: const TextStyle(
            //           color: Colors.white,
            //           fontSize: 14,
            //           fontWeight: FontWeight.w600,
            //         ),
            //       ),
            //       const SizedBox(height: 4),
                  
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}