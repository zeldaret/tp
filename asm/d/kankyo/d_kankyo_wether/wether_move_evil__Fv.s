lbl_80059F74:
/* 80059F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80059F78  7C 08 02 A6 */	mflr r0
/* 80059F7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80059F80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80059F84  93 C1 00 08 */	stw r30, 8(r1)
/* 80059F88  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80059F8C  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 80059F90  88 1F 10 50 */	lbz r0, 0x1050(r31)
/* 80059F94  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80059F98  2C 00 00 01 */	cmpwi r0, 1
/* 80059F9C  41 82 00 B0 */	beq lbl_8005A04C
/* 80059FA0  40 80 01 00 */	bge lbl_8005A0A0
/* 80059FA4  2C 00 00 00 */	cmpwi r0, 0
/* 80059FA8  40 80 00 08 */	bge lbl_80059FB0
/* 80059FAC  48 00 00 F4 */	b lbl_8005A0A0
lbl_80059FB0:
/* 80059FB0  80 1F 10 54 */	lwz r0, 0x1054(r31)
/* 80059FB4  2C 00 00 00 */	cmpwi r0, 0
/* 80059FB8  41 82 00 E8 */	beq lbl_8005A0A0
/* 80059FBC  3C 60 00 02 */	lis r3, 0x0002 /* 0x00021364@ha */
/* 80059FC0  38 63 13 64 */	addi r3, r3, 0x1364 /* 0x00021364@l */
/* 80059FC4  38 80 00 20 */	li r4, 0x20
/* 80059FC8  48 27 4C AD */	bl __nw__FUli
/* 80059FCC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80059FD0  41 82 00 50 */	beq lbl_8005A020
/* 80059FD4  7F C4 F3 78 */	mr r4, r30
/* 80059FD8  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha
/* 80059FDC  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l
/* 80059FE0  90 1E 00 00 */	stw r0, 0(r30)
/* 80059FE4  38 00 00 00 */	li r0, 0
/* 80059FE8  90 1E 00 04 */	stw r0, 4(r30)
/* 80059FEC  90 1E 00 08 */	stw r0, 8(r30)
/* 80059FF0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80059FF4  3C 60 80 3B */	lis r3, __vt__19dKankyo_evil_Packet@ha
/* 80059FF8  38 03 9A C0 */	addi r0, r3, __vt__19dKankyo_evil_Packet@l
/* 80059FFC  90 1E 00 00 */	stw r0, 0(r30)
/* 8005A000  38 64 00 1C */	addi r3, r4, 0x1c
/* 8005A004  3C 80 80 05 */	lis r4, __ct__11EF_EVIL_EFFFv@ha
/* 8005A008  38 84 70 A8 */	addi r4, r4, __ct__11EF_EVIL_EFFFv@l
/* 8005A00C  3C A0 80 05 */	lis r5, __dt__11EF_EVIL_EFFFv@ha
/* 8005A010  38 A5 70 6C */	addi r5, r5, __dt__11EF_EVIL_EFFFv@l
/* 8005A014  38 C0 00 44 */	li r6, 0x44
/* 8005A018  38 E0 07 D0 */	li r7, 0x7d0
/* 8005A01C  48 30 7D 45 */	bl __construct_array
lbl_8005A020:
/* 8005A020  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8005A024  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8005A028  93 C3 10 58 */	stw r30, 0x1058(r3)
/* 8005A02C  28 1E 00 00 */	cmplwi r30, 0
/* 8005A030  41 82 00 70 */	beq lbl_8005A0A0
/* 8005A034  48 01 38 E1 */	bl dKyr_evil_init__Fv
/* 8005A038  48 01 39 CD */	bl dKyr_evil_move__Fv
/* 8005A03C  88 7F 10 50 */	lbz r3, 0x1050(r31)
/* 8005A040  38 03 00 01 */	addi r0, r3, 1
/* 8005A044  98 1F 10 50 */	stb r0, 0x1050(r31)
/* 8005A048  48 00 00 58 */	b lbl_8005A0A0
lbl_8005A04C:
/* 8005A04C  48 01 39 B9 */	bl dKyr_evil_move__Fv
/* 8005A050  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8005A054  3B C3 CA 54 */	addi r30, r3, g_env_light@l
/* 8005A058  80 1E 10 54 */	lwz r0, 0x1054(r30)
/* 8005A05C  2C 00 00 00 */	cmpwi r0, 0
/* 8005A060  40 82 00 40 */	bne lbl_8005A0A0
/* 8005A064  80 7E 10 58 */	lwz r3, 0x1058(r30)
/* 8005A068  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8005A06C  2C 00 00 00 */	cmpwi r0, 0
/* 8005A070  40 82 00 30 */	bne lbl_8005A0A0
/* 8005A074  38 00 00 00 */	li r0, 0
/* 8005A078  98 1F 10 50 */	stb r0, 0x1050(r31)
/* 8005A07C  28 03 00 00 */	cmplwi r3, 0
/* 8005A080  41 82 00 18 */	beq lbl_8005A098
/* 8005A084  38 80 00 01 */	li r4, 1
/* 8005A088  81 83 00 00 */	lwz r12, 0(r3)
/* 8005A08C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8005A090  7D 89 03 A6 */	mtctr r12
/* 8005A094  4E 80 04 21 */	bctrl 
lbl_8005A098:
/* 8005A098  38 00 00 00 */	li r0, 0
/* 8005A09C  90 1E 10 58 */	stw r0, 0x1058(r30)
lbl_8005A0A0:
/* 8005A0A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8005A0A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8005A0A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005A0AC  7C 08 03 A6 */	mtlr r0
/* 8005A0B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8005A0B4  4E 80 00 20 */	blr 
