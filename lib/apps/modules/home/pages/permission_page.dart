import 'package:attandance_app/utils/constants/color.dart';
import 'package:flutter/material.dart';

class PermissionPage extends StatelessWidget {
  const PermissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Izin Bekerja',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kategori Izin',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(
                      width: 1,
                      color: AColors.primary,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(
                      width: 1,
                      color: AColors.primary,
                    ),
                  ),
                  label: Text(
                    'Kategori izin',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.grey,
                        ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Keterangan',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(
                      width: 1,
                      color: AColors.primary,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(
                      width: 1,
                      color: AColors.primary,
                    ),
                  ),
                  label: Text(
                    'Keterangan',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.grey,
                        ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Dokumentasi Pendukung',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AColors.primary,
                      )),
                  child: Center(
                    child: Icon(
                      Icons.add_a_photo,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AColors.primary,
                  ),
                  child: Text(
                    'Ajukan Izin',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
