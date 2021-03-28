lbl_80319D30:
/* 80319D30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80319D34  7C 08 02 A6 */	mflr r0
/* 80319D38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80319D3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80319D40  7C 7F 1B 78 */	mr r31, r3
/* 80319D44  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 80319D48  80 64 00 08 */	lwz r3, 8(r4)
/* 80319D4C  80 0D 83 E8 */	lwz r0, SizeOfLoadColorChans(r13)
/* 80319D50  7C 63 02 14 */	add r3, r3, r0
/* 80319D54  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80319D58  7C 03 00 40 */	cmplw r3, r0
/* 80319D5C  40 81 00 08 */	ble lbl_80319D64
/* 80319D60  48 04 73 75 */	bl GDOverflowed
lbl_80319D64:
/* 80319D64  38 E0 00 10 */	li r7, 0x10
/* 80319D68  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 80319D6C  80 64 00 08 */	lwz r3, 8(r4)
/* 80319D70  38 03 00 01 */	addi r0, r3, 1
/* 80319D74  90 04 00 08 */	stw r0, 8(r4)
/* 80319D78  98 E3 00 00 */	stb r7, 0(r3)
/* 80319D7C  38 00 00 00 */	li r0, 0
/* 80319D80  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 80319D84  80 85 00 08 */	lwz r4, 8(r5)
/* 80319D88  38 64 00 01 */	addi r3, r4, 1
/* 80319D8C  90 65 00 08 */	stw r3, 8(r5)
/* 80319D90  98 04 00 00 */	stb r0, 0(r4)
/* 80319D94  38 C0 00 03 */	li r6, 3
/* 80319D98  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 80319D9C  80 85 00 08 */	lwz r4, 8(r5)
/* 80319DA0  38 64 00 01 */	addi r3, r4, 1
/* 80319DA4  90 65 00 08 */	stw r3, 8(r5)
/* 80319DA8  98 C4 00 00 */	stb r6, 0(r4)
/* 80319DAC  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 80319DB0  80 85 00 08 */	lwz r4, 8(r5)
/* 80319DB4  38 64 00 01 */	addi r3, r4, 1
/* 80319DB8  90 65 00 08 */	stw r3, 8(r5)
/* 80319DBC  98 E4 00 00 */	stb r7, 0(r4)
/* 80319DC0  38 C0 00 0E */	li r6, 0xe
/* 80319DC4  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 80319DC8  80 85 00 08 */	lwz r4, 8(r5)
/* 80319DCC  38 64 00 01 */	addi r3, r4, 1
/* 80319DD0  90 65 00 08 */	stw r3, 8(r5)
/* 80319DD4  98 C4 00 00 */	stb r6, 0(r4)
/* 80319DD8  80 62 C9 A8 */	lwz r3, lit_585(r2)
/* 80319DDC  90 61 00 14 */	stw r3, 0x14(r1)
/* 80319DE0  A1 9F 00 0E */	lhz r12, 0xe(r31)
/* 80319DE4  55 84 BF BE */	rlwinm r4, r12, 0x17, 0x1e, 0x1f
/* 80319DE8  38 61 00 14 */	addi r3, r1, 0x14
/* 80319DEC  7D 63 20 AE */	lbzx r11, r3, r4
/* 80319DF0  55 8A CF BE */	rlwinm r10, r12, 0x19, 0x1e, 0x1f
/* 80319DF4  55 83 CE 36 */	rlwinm r3, r12, 0x19, 0x18, 0x1b
/* 80319DF8  51 83 F7 3E */	rlwimi r3, r12, 0x1e, 0x1c, 0x1f
/* 80319DFC  54 69 06 3E */	clrlwi r9, r3, 0x18
/* 80319E00  55 88 07 FE */	clrlwi r8, r12, 0x1f
/* 80319E04  54 66 3C 68 */	rlwinm r6, r3, 7, 0x11, 0x14
/* 80319E08  30 6B FF FF */	addic r3, r11, -1
/* 80319E0C  7C 63 59 10 */	subfe r3, r3, r11
/* 80319E10  54 65 53 AA */	rlwinm r5, r3, 0xa, 0xe, 0x15
/* 80319E14  20 8B 00 02 */	subfic r4, r11, 2
/* 80319E18  30 64 FF FF */	addic r3, r4, -1
/* 80319E1C  7C 63 21 10 */	subfe r3, r3, r4
/* 80319E20  54 63 4B EC */	rlwinm r3, r3, 9, 0xf, 0x16
/* 80319E24  51 88 07 BC */	rlwimi r8, r12, 0, 0x1e, 0x1e
/* 80319E28  51 28 16 BA */	rlwimi r8, r9, 2, 0x1a, 0x1d
/* 80319E2C  51 88 06 72 */	rlwimi r8, r12, 0, 0x19, 0x19
/* 80319E30  2C 0B 00 00 */	cmpwi r11, 0
/* 80319E34  40 82 00 08 */	bne lbl_80319E3C
/* 80319E38  7C 0A 03 78 */	mr r10, r0
lbl_80319E3C:
/* 80319E3C  55 40 38 30 */	slwi r0, r10, 7
/* 80319E40  7D 00 03 78 */	or r0, r8, r0
/* 80319E44  7C 60 03 78 */	or r0, r3, r0
/* 80319E48  7C A0 03 78 */	or r0, r5, r0
/* 80319E4C  7C C6 03 78 */	or r6, r6, r0
/* 80319E50  54 C5 46 3E */	srwi r5, r6, 0x18
/* 80319E54  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 80319E58  80 64 00 08 */	lwz r3, 8(r4)
/* 80319E5C  38 03 00 01 */	addi r0, r3, 1
/* 80319E60  90 04 00 08 */	stw r0, 8(r4)
/* 80319E64  98 A3 00 00 */	stb r5, 0(r3)
/* 80319E68  54 C5 86 3E */	rlwinm r5, r6, 0x10, 0x18, 0x1f
/* 80319E6C  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 80319E70  80 64 00 08 */	lwz r3, 8(r4)
/* 80319E74  38 03 00 01 */	addi r0, r3, 1
/* 80319E78  90 04 00 08 */	stw r0, 8(r4)
/* 80319E7C  98 A3 00 00 */	stb r5, 0(r3)
/* 80319E80  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 80319E84  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 80319E88  80 64 00 08 */	lwz r3, 8(r4)
/* 80319E8C  38 03 00 01 */	addi r0, r3, 1
/* 80319E90  90 04 00 08 */	stw r0, 8(r4)
/* 80319E94  98 A3 00 00 */	stb r5, 0(r3)
/* 80319E98  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 80319E9C  80 64 00 08 */	lwz r3, 8(r4)
/* 80319EA0  38 03 00 01 */	addi r0, r3, 1
/* 80319EA4  90 04 00 08 */	stw r0, 8(r4)
/* 80319EA8  98 C3 00 00 */	stb r6, 0(r3)
/* 80319EAC  80 02 C9 A8 */	lwz r0, lit_585(r2)
/* 80319EB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80319EB4  A1 7F 00 12 */	lhz r11, 0x12(r31)
/* 80319EB8  55 60 BF BE */	rlwinm r0, r11, 0x17, 0x1e, 0x1f
/* 80319EBC  38 61 00 10 */	addi r3, r1, 0x10
/* 80319EC0  7D 43 00 AE */	lbzx r10, r3, r0
/* 80319EC4  55 69 CF BE */	rlwinm r9, r11, 0x19, 0x1e, 0x1f
/* 80319EC8  55 60 CE 36 */	rlwinm r0, r11, 0x19, 0x18, 0x1b
/* 80319ECC  51 60 F7 3E */	rlwimi r0, r11, 0x1e, 0x1c, 0x1f
/* 80319ED0  54 08 06 3E */	clrlwi r8, r0, 0x18
/* 80319ED4  55 67 07 FE */	clrlwi r7, r11, 0x1f
/* 80319ED8  54 05 3C 68 */	rlwinm r5, r0, 7, 0x11, 0x14
/* 80319EDC  30 0A FF FF */	addic r0, r10, -1
/* 80319EE0  7C 00 51 10 */	subfe r0, r0, r10
/* 80319EE4  54 04 53 AA */	rlwinm r4, r0, 0xa, 0xe, 0x15
/* 80319EE8  20 6A 00 02 */	subfic r3, r10, 2
/* 80319EEC  30 03 FF FF */	addic r0, r3, -1
/* 80319EF0  7C 00 19 10 */	subfe r0, r0, r3
/* 80319EF4  54 03 4B EC */	rlwinm r3, r0, 9, 0xf, 0x16
/* 80319EF8  51 67 07 BC */	rlwimi r7, r11, 0, 0x1e, 0x1e
/* 80319EFC  51 07 16 BA */	rlwimi r7, r8, 2, 0x1a, 0x1d
/* 80319F00  51 67 06 72 */	rlwimi r7, r11, 0, 0x19, 0x19
/* 80319F04  2C 0A 00 00 */	cmpwi r10, 0
/* 80319F08  40 82 00 08 */	bne lbl_80319F10
/* 80319F0C  39 20 00 00 */	li r9, 0
lbl_80319F10:
/* 80319F10  55 20 38 30 */	slwi r0, r9, 7
/* 80319F14  7C E0 03 78 */	or r0, r7, r0
/* 80319F18  7C 60 03 78 */	or r0, r3, r0
/* 80319F1C  7C 80 03 78 */	or r0, r4, r0
/* 80319F20  7C A6 03 78 */	or r6, r5, r0
/* 80319F24  54 C5 46 3E */	srwi r5, r6, 0x18
/* 80319F28  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 80319F2C  80 64 00 08 */	lwz r3, 8(r4)
/* 80319F30  38 03 00 01 */	addi r0, r3, 1
/* 80319F34  90 04 00 08 */	stw r0, 8(r4)
/* 80319F38  98 A3 00 00 */	stb r5, 0(r3)
/* 80319F3C  54 C5 86 3E */	rlwinm r5, r6, 0x10, 0x18, 0x1f
/* 80319F40  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 80319F44  80 64 00 08 */	lwz r3, 8(r4)
/* 80319F48  38 03 00 01 */	addi r0, r3, 1
/* 80319F4C  90 04 00 08 */	stw r0, 8(r4)
/* 80319F50  98 A3 00 00 */	stb r5, 0(r3)
/* 80319F54  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 80319F58  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 80319F5C  80 64 00 08 */	lwz r3, 8(r4)
/* 80319F60  38 03 00 01 */	addi r0, r3, 1
/* 80319F64  90 04 00 08 */	stw r0, 8(r4)
/* 80319F68  98 A3 00 00 */	stb r5, 0(r3)
/* 80319F6C  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 80319F70  80 64 00 08 */	lwz r3, 8(r4)
/* 80319F74  38 03 00 01 */	addi r0, r3, 1
/* 80319F78  90 04 00 08 */	stw r0, 8(r4)
/* 80319F7C  98 C3 00 00 */	stb r6, 0(r3)
/* 80319F80  80 02 C9 A8 */	lwz r0, lit_585(r2)
/* 80319F84  90 01 00 0C */	stw r0, 0xc(r1)
/* 80319F88  A1 7F 00 10 */	lhz r11, 0x10(r31)
/* 80319F8C  55 60 BF BE */	rlwinm r0, r11, 0x17, 0x1e, 0x1f
/* 80319F90  38 61 00 0C */	addi r3, r1, 0xc
/* 80319F94  7D 43 00 AE */	lbzx r10, r3, r0
/* 80319F98  55 69 CF BE */	rlwinm r9, r11, 0x19, 0x1e, 0x1f
/* 80319F9C  55 60 CE 36 */	rlwinm r0, r11, 0x19, 0x18, 0x1b
/* 80319FA0  51 60 F7 3E */	rlwimi r0, r11, 0x1e, 0x1c, 0x1f
/* 80319FA4  54 08 06 3E */	clrlwi r8, r0, 0x18
/* 80319FA8  55 67 07 FE */	clrlwi r7, r11, 0x1f
/* 80319FAC  54 05 3C 68 */	rlwinm r5, r0, 7, 0x11, 0x14
/* 80319FB0  30 0A FF FF */	addic r0, r10, -1
/* 80319FB4  7C 00 51 10 */	subfe r0, r0, r10
/* 80319FB8  54 04 53 AA */	rlwinm r4, r0, 0xa, 0xe, 0x15
/* 80319FBC  20 6A 00 02 */	subfic r3, r10, 2
/* 80319FC0  30 03 FF FF */	addic r0, r3, -1
/* 80319FC4  7C 00 19 10 */	subfe r0, r0, r3
/* 80319FC8  54 03 4B EC */	rlwinm r3, r0, 9, 0xf, 0x16
/* 80319FCC  51 67 07 BC */	rlwimi r7, r11, 0, 0x1e, 0x1e
/* 80319FD0  51 07 16 BA */	rlwimi r7, r8, 2, 0x1a, 0x1d
/* 80319FD4  51 67 06 72 */	rlwimi r7, r11, 0, 0x19, 0x19
/* 80319FD8  2C 0A 00 00 */	cmpwi r10, 0
/* 80319FDC  40 82 00 08 */	bne lbl_80319FE4
/* 80319FE0  39 20 00 00 */	li r9, 0
lbl_80319FE4:
/* 80319FE4  55 20 38 30 */	slwi r0, r9, 7
/* 80319FE8  7C E0 03 78 */	or r0, r7, r0
/* 80319FEC  7C 60 03 78 */	or r0, r3, r0
/* 80319FF0  7C 80 03 78 */	or r0, r4, r0
/* 80319FF4  7C A6 03 78 */	or r6, r5, r0
/* 80319FF8  54 C5 46 3E */	srwi r5, r6, 0x18
/* 80319FFC  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A000  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A004  38 03 00 01 */	addi r0, r3, 1
/* 8031A008  90 04 00 08 */	stw r0, 8(r4)
/* 8031A00C  98 A3 00 00 */	stb r5, 0(r3)
/* 8031A010  54 C5 86 3E */	rlwinm r5, r6, 0x10, 0x18, 0x1f
/* 8031A014  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A018  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A01C  38 03 00 01 */	addi r0, r3, 1
/* 8031A020  90 04 00 08 */	stw r0, 8(r4)
/* 8031A024  98 A3 00 00 */	stb r5, 0(r3)
/* 8031A028  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 8031A02C  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A030  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A034  38 03 00 01 */	addi r0, r3, 1
/* 8031A038  90 04 00 08 */	stw r0, 8(r4)
/* 8031A03C  98 A3 00 00 */	stb r5, 0(r3)
/* 8031A040  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A044  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A048  38 03 00 01 */	addi r0, r3, 1
/* 8031A04C  90 04 00 08 */	stw r0, 8(r4)
/* 8031A050  98 C3 00 00 */	stb r6, 0(r3)
/* 8031A054  80 02 C9 A8 */	lwz r0, lit_585(r2)
/* 8031A058  90 01 00 08 */	stw r0, 8(r1)
/* 8031A05C  A1 7F 00 14 */	lhz r11, 0x14(r31)
/* 8031A060  55 60 BF BE */	rlwinm r0, r11, 0x17, 0x1e, 0x1f
/* 8031A064  38 61 00 08 */	addi r3, r1, 8
/* 8031A068  7D 43 00 AE */	lbzx r10, r3, r0
/* 8031A06C  55 69 CF BE */	rlwinm r9, r11, 0x19, 0x1e, 0x1f
/* 8031A070  55 60 CE 36 */	rlwinm r0, r11, 0x19, 0x18, 0x1b
/* 8031A074  51 60 F7 3E */	rlwimi r0, r11, 0x1e, 0x1c, 0x1f
/* 8031A078  54 08 06 3E */	clrlwi r8, r0, 0x18
/* 8031A07C  55 67 07 FE */	clrlwi r7, r11, 0x1f
/* 8031A080  54 05 3C 68 */	rlwinm r5, r0, 7, 0x11, 0x14
/* 8031A084  30 0A FF FF */	addic r0, r10, -1
/* 8031A088  7C 00 51 10 */	subfe r0, r0, r10
/* 8031A08C  54 04 53 AA */	rlwinm r4, r0, 0xa, 0xe, 0x15
/* 8031A090  20 6A 00 02 */	subfic r3, r10, 2
/* 8031A094  30 03 FF FF */	addic r0, r3, -1
/* 8031A098  7C 00 19 10 */	subfe r0, r0, r3
/* 8031A09C  54 03 4B EC */	rlwinm r3, r0, 9, 0xf, 0x16
/* 8031A0A0  51 67 07 BC */	rlwimi r7, r11, 0, 0x1e, 0x1e
/* 8031A0A4  51 07 16 BA */	rlwimi r7, r8, 2, 0x1a, 0x1d
/* 8031A0A8  51 67 06 72 */	rlwimi r7, r11, 0, 0x19, 0x19
/* 8031A0AC  2C 0A 00 00 */	cmpwi r10, 0
/* 8031A0B0  40 82 00 08 */	bne lbl_8031A0B8
/* 8031A0B4  39 20 00 00 */	li r9, 0
lbl_8031A0B8:
/* 8031A0B8  55 20 38 30 */	slwi r0, r9, 7
/* 8031A0BC  7C E0 03 78 */	or r0, r7, r0
/* 8031A0C0  7C 60 03 78 */	or r0, r3, r0
/* 8031A0C4  7C 80 03 78 */	or r0, r4, r0
/* 8031A0C8  7C A6 03 78 */	or r6, r5, r0
/* 8031A0CC  54 C5 46 3E */	srwi r5, r6, 0x18
/* 8031A0D0  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A0D4  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A0D8  38 03 00 01 */	addi r0, r3, 1
/* 8031A0DC  90 04 00 08 */	stw r0, 8(r4)
/* 8031A0E0  98 A3 00 00 */	stb r5, 0(r3)
/* 8031A0E4  54 C5 86 3E */	rlwinm r5, r6, 0x10, 0x18, 0x1f
/* 8031A0E8  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A0EC  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A0F0  38 03 00 01 */	addi r0, r3, 1
/* 8031A0F4  90 04 00 08 */	stw r0, 8(r4)
/* 8031A0F8  98 A3 00 00 */	stb r5, 0(r3)
/* 8031A0FC  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 8031A100  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A104  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A108  38 03 00 01 */	addi r0, r3, 1
/* 8031A10C  90 04 00 08 */	stw r0, 8(r4)
/* 8031A110  98 A3 00 00 */	stb r5, 0(r3)
/* 8031A114  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A118  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A11C  38 03 00 01 */	addi r0, r3, 1
/* 8031A120  90 04 00 08 */	stw r0, 8(r4)
/* 8031A124  98 C3 00 00 */	stb r6, 0(r3)
/* 8031A128  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8031A12C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031A130  7C 08 03 A6 */	mtlr r0
/* 8031A134  38 21 00 20 */	addi r1, r1, 0x20
/* 8031A138  4E 80 00 20 */	blr 
