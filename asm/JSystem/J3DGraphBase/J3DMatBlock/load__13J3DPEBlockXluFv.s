lbl_8031E98C:
/* 8031E98C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031E990  7C 08 02 A6 */	mflr r0
/* 8031E994  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031E998  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031E99C  80 64 00 08 */	lwz r3, 8(r4)
/* 8031E9A0  38 63 00 1E */	addi r3, r3, 0x1e
/* 8031E9A4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8031E9A8  7C 03 00 40 */	cmplw r3, r0
/* 8031E9AC  40 81 00 08 */	ble lbl_8031E9B4
/* 8031E9B0  48 04 27 25 */	bl GDOverflowed
lbl_8031E9B4:
/* 8031E9B4  38 A0 00 61 */	li r5, 0x61
/* 8031E9B8  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031E9BC  80 64 00 08 */	lwz r3, 8(r4)
/* 8031E9C0  38 03 00 01 */	addi r0, r3, 1
/* 8031E9C4  90 04 00 08 */	stw r0, 8(r4)
/* 8031E9C8  98 A3 00 00 */	stb r5, 0(r3)
/* 8031E9CC  38 C0 00 F3 */	li r6, 0xf3
/* 8031E9D0  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031E9D4  80 64 00 08 */	lwz r3, 8(r4)
/* 8031E9D8  38 03 00 01 */	addi r0, r3, 1
/* 8031E9DC  90 04 00 08 */	stw r0, 8(r4)
/* 8031E9E0  98 C3 00 00 */	stb r6, 0(r3)
/* 8031E9E4  38 C0 00 3F */	li r6, 0x3f
/* 8031E9E8  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031E9EC  80 64 00 08 */	lwz r3, 8(r4)
/* 8031E9F0  38 03 00 01 */	addi r0, r3, 1
/* 8031E9F4  90 04 00 08 */	stw r0, 8(r4)
/* 8031E9F8  98 C3 00 00 */	stb r6, 0(r3)
/* 8031E9FC  38 80 00 00 */	li r4, 0
/* 8031EA00  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031EA04  80 66 00 08 */	lwz r3, 8(r6)
/* 8031EA08  38 03 00 01 */	addi r0, r3, 1
/* 8031EA0C  90 06 00 08 */	stw r0, 8(r6)
/* 8031EA10  98 83 00 00 */	stb r4, 0(r3)
/* 8031EA14  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031EA18  80 66 00 08 */	lwz r3, 8(r6)
/* 8031EA1C  38 03 00 01 */	addi r0, r3, 1
/* 8031EA20  90 06 00 08 */	stw r0, 8(r6)
/* 8031EA24  98 83 00 00 */	stb r4, 0(r3)
/* 8031EA28  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031EA2C  80 66 00 08 */	lwz r3, 8(r6)
/* 8031EA30  38 03 00 01 */	addi r0, r3, 1
/* 8031EA34  90 06 00 08 */	stw r0, 8(r6)
/* 8031EA38  98 A3 00 00 */	stb r5, 0(r3)
/* 8031EA3C  38 60 00 FE */	li r3, 0xfe
/* 8031EA40  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031EA44  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031EA48  38 06 00 01 */	addi r0, r6, 1
/* 8031EA4C  90 07 00 08 */	stw r0, 8(r7)
/* 8031EA50  98 66 00 00 */	stb r3, 0(r6)
/* 8031EA54  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031EA58  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031EA5C  38 06 00 01 */	addi r0, r6, 1
/* 8031EA60  90 07 00 08 */	stw r0, 8(r7)
/* 8031EA64  98 86 00 00 */	stb r4, 0(r6)
/* 8031EA68  39 00 00 FF */	li r8, 0xff
/* 8031EA6C  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031EA70  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031EA74  38 06 00 01 */	addi r0, r6, 1
/* 8031EA78  90 07 00 08 */	stw r0, 8(r7)
/* 8031EA7C  99 06 00 00 */	stb r8, 0(r6)
/* 8031EA80  39 00 00 E3 */	li r8, 0xe3
/* 8031EA84  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031EA88  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031EA8C  38 06 00 01 */	addi r0, r6, 1
/* 8031EA90  90 07 00 08 */	stw r0, 8(r7)
/* 8031EA94  99 06 00 00 */	stb r8, 0(r6)
/* 8031EA98  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031EA9C  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031EAA0  38 06 00 01 */	addi r0, r6, 1
/* 8031EAA4  90 07 00 08 */	stw r0, 8(r7)
/* 8031EAA8  98 A6 00 00 */	stb r5, 0(r6)
/* 8031EAAC  39 00 00 41 */	li r8, 0x41
/* 8031EAB0  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031EAB4  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031EAB8  38 06 00 01 */	addi r0, r6, 1
/* 8031EABC  90 07 00 08 */	stw r0, 8(r7)
/* 8031EAC0  99 06 00 00 */	stb r8, 0(r6)
/* 8031EAC4  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031EAC8  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031EACC  38 06 00 01 */	addi r0, r6, 1
/* 8031EAD0  90 07 00 08 */	stw r0, 8(r7)
/* 8031EAD4  98 86 00 00 */	stb r4, 0(r6)
/* 8031EAD8  39 00 00 34 */	li r8, 0x34
/* 8031EADC  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031EAE0  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031EAE4  38 06 00 01 */	addi r0, r6, 1
/* 8031EAE8  90 07 00 08 */	stw r0, 8(r7)
/* 8031EAEC  99 06 00 00 */	stb r8, 0(r6)
/* 8031EAF0  39 00 00 A1 */	li r8, 0xa1
/* 8031EAF4  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031EAF8  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031EAFC  38 06 00 01 */	addi r0, r6, 1
/* 8031EB00  90 07 00 08 */	stw r0, 8(r7)
/* 8031EB04  99 06 00 00 */	stb r8, 0(r6)
/* 8031EB08  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031EB0C  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031EB10  38 06 00 01 */	addi r0, r6, 1
/* 8031EB14  90 07 00 08 */	stw r0, 8(r7)
/* 8031EB18  98 A6 00 00 */	stb r5, 0(r6)
/* 8031EB1C  38 00 00 40 */	li r0, 0x40
/* 8031EB20  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031EB24  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031EB28  38 C7 00 01 */	addi r6, r7, 1
/* 8031EB2C  90 C8 00 08 */	stw r6, 8(r8)
/* 8031EB30  98 07 00 00 */	stb r0, 0(r7)
/* 8031EB34  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031EB38  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031EB3C  38 C7 00 01 */	addi r6, r7, 1
/* 8031EB40  90 C8 00 08 */	stw r6, 8(r8)
/* 8031EB44  98 87 00 00 */	stb r4, 0(r7)
/* 8031EB48  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031EB4C  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031EB50  38 C7 00 01 */	addi r6, r7, 1
/* 8031EB54  90 C8 00 08 */	stw r6, 8(r8)
/* 8031EB58  98 87 00 00 */	stb r4, 0(r7)
/* 8031EB5C  39 20 00 07 */	li r9, 7
/* 8031EB60  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031EB64  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031EB68  38 C7 00 01 */	addi r6, r7, 1
/* 8031EB6C  90 C8 00 08 */	stw r6, 8(r8)
/* 8031EB70  99 27 00 00 */	stb r9, 0(r7)
/* 8031EB74  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031EB78  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031EB7C  38 C7 00 01 */	addi r6, r7, 1
/* 8031EB80  90 C8 00 08 */	stw r6, 8(r8)
/* 8031EB84  98 A7 00 00 */	stb r5, 0(r7)
/* 8031EB88  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031EB8C  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031EB90  38 C7 00 01 */	addi r6, r7, 1
/* 8031EB94  90 C8 00 08 */	stw r6, 8(r8)
/* 8031EB98  98 67 00 00 */	stb r3, 0(r7)
/* 8031EB9C  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031EBA0  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031EBA4  38 66 00 01 */	addi r3, r6, 1
/* 8031EBA8  90 67 00 08 */	stw r3, 8(r7)
/* 8031EBAC  98 86 00 00 */	stb r4, 0(r6)
/* 8031EBB0  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031EBB4  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031EBB8  38 66 00 01 */	addi r3, r6, 1
/* 8031EBBC  90 67 00 08 */	stw r3, 8(r7)
/* 8031EBC0  98 86 00 00 */	stb r4, 0(r6)
/* 8031EBC4  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031EBC8  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031EBCC  38 66 00 01 */	addi r3, r6, 1
/* 8031EBD0  90 67 00 08 */	stw r3, 8(r7)
/* 8031EBD4  98 06 00 00 */	stb r0, 0(r6)
/* 8031EBD8  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031EBDC  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031EBE0  38 66 00 01 */	addi r3, r6, 1
/* 8031EBE4  90 67 00 08 */	stw r3, 8(r7)
/* 8031EBE8  98 A6 00 00 */	stb r5, 0(r6)
/* 8031EBEC  38 E0 00 43 */	li r7, 0x43
/* 8031EBF0  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031EBF4  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031EBF8  38 65 00 01 */	addi r3, r5, 1
/* 8031EBFC  90 66 00 08 */	stw r3, 8(r6)
/* 8031EC00  98 E5 00 00 */	stb r7, 0(r5)
/* 8031EC04  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031EC08  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031EC0C  38 65 00 01 */	addi r3, r5, 1
/* 8031EC10  90 66 00 08 */	stw r3, 8(r6)
/* 8031EC14  98 85 00 00 */	stb r4, 0(r5)
/* 8031EC18  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031EC1C  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031EC20  38 65 00 01 */	addi r3, r5, 1
/* 8031EC24  90 66 00 08 */	stw r3, 8(r6)
/* 8031EC28  98 85 00 00 */	stb r4, 0(r5)
/* 8031EC2C  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031EC30  80 85 00 08 */	lwz r4, 8(r5)
/* 8031EC34  38 64 00 01 */	addi r3, r4, 1
/* 8031EC38  90 65 00 08 */	stw r3, 8(r5)
/* 8031EC3C  98 04 00 00 */	stb r0, 0(r4)
/* 8031EC40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031EC44  7C 08 03 A6 */	mtlr r0
/* 8031EC48  38 21 00 10 */	addi r1, r1, 0x10
/* 8031EC4C  4E 80 00 20 */	blr 
