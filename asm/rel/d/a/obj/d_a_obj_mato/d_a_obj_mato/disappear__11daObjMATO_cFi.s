lbl_80C92044:
/* 80C92044  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C92048  7C 08 02 A6 */	mflr r0
/* 80C9204C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C92050  39 61 00 30 */	addi r11, r1, 0x30
/* 80C92054  4B 6D 01 85 */	bl _savegpr_28
/* 80C92058  7C 7C 1B 78 */	mr r28, r3
/* 80C9205C  7C 85 23 78 */	mr r5, r4
/* 80C92060  3C 80 80 C9 */	lis r4, l_B_ling_bmd_table@ha /* 0x80C92C50@ha */
/* 80C92064  3B C4 2C 50 */	addi r30, r4, l_B_ling_bmd_table@l /* 0x80C92C50@l */
/* 80C92068  1F A5 01 C0 */	mulli r29, r5, 0x1c0
/* 80C9206C  7F FC EA 14 */	add r31, r28, r29
/* 80C92070  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 80C92074  2C 00 00 00 */	cmpwi r0, 0
/* 80C92078  40 82 00 24 */	bne lbl_80C9209C
/* 80C9207C  38 00 00 14 */	li r0, 0x14
/* 80C92080  98 1F 07 30 */	stb r0, 0x730(r31)
/* 80C92084  38 00 20 00 */	li r0, 0x2000
/* 80C92088  B0 1F 07 2C */	sth r0, 0x72c(r31)
/* 80C9208C  80 7F 07 28 */	lwz r3, 0x728(r31)
/* 80C92090  38 03 00 01 */	addi r0, r3, 1
/* 80C92094  90 1F 07 28 */	stw r0, 0x728(r31)
/* 80C92098  48 00 00 F8 */	b lbl_80C92190
lbl_80C9209C:
/* 80C9209C  2C 00 FF FF */	cmpwi r0, -1
/* 80C920A0  41 82 00 F0 */	beq lbl_80C92190
/* 80C920A4  2C 00 00 01 */	cmpwi r0, 1
/* 80C920A8  40 82 00 3C */	bne lbl_80C920E4
/* 80C920AC  A8 7F 07 0A */	lha r3, 0x70a(r31)
/* 80C920B0  A8 1F 07 2C */	lha r0, 0x72c(r31)
/* 80C920B4  7C 03 02 14 */	add r0, r3, r0
/* 80C920B8  B0 1F 07 0A */	sth r0, 0x70a(r31)
/* 80C920BC  88 7F 07 30 */	lbz r3, 0x730(r31)
/* 80C920C0  38 03 FF FF */	addi r0, r3, -1
/* 80C920C4  98 1F 07 30 */	stb r0, 0x730(r31)
/* 80C920C8  88 1F 07 30 */	lbz r0, 0x730(r31)
/* 80C920CC  28 00 00 00 */	cmplwi r0, 0
/* 80C920D0  40 82 00 C0 */	bne lbl_80C92190
/* 80C920D4  80 7F 07 28 */	lwz r3, 0x728(r31)
/* 80C920D8  38 03 00 01 */	addi r0, r3, 1
/* 80C920DC  90 1F 07 28 */	stw r0, 0x728(r31)
/* 80C920E0  48 00 00 B0 */	b lbl_80C92190
lbl_80C920E4:
/* 80C920E4  2C 00 00 02 */	cmpwi r0, 2
/* 80C920E8  40 82 00 74 */	bne lbl_80C9215C
/* 80C920EC  A8 7F 07 0A */	lha r3, 0x70a(r31)
/* 80C920F0  A8 1F 07 2C */	lha r0, 0x72c(r31)
/* 80C920F4  7C 03 02 14 */	add r0, r3, r0
/* 80C920F8  B0 1F 07 0A */	sth r0, 0x70a(r31)
/* 80C920FC  38 7F 06 FC */	addi r3, r31, 0x6fc
/* 80C92100  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80C92104  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 80C92108  4B 5D E6 39 */	bl cLib_chaseF__FPfff
/* 80C9210C  38 7F 07 00 */	addi r3, r31, 0x700
/* 80C92110  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80C92114  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 80C92118  4B 5D E6 29 */	bl cLib_chaseF__FPfff
/* 80C9211C  38 7F 07 04 */	addi r3, r31, 0x704
/* 80C92120  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80C92124  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 80C92128  4B 5D E6 19 */	bl cLib_chaseF__FPfff
/* 80C9212C  7F E3 FB 78 */	mr r3, r31
/* 80C92130  C0 1F 06 FC */	lfs f0, 0x6fc(r31)
/* 80C92134  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80C92138  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C9213C  40 82 00 54 */	bne lbl_80C92190
/* 80C92140  C0 03 07 04 */	lfs f0, 0x704(r3)
/* 80C92144  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C92148  40 82 00 48 */	bne lbl_80C92190
/* 80C9214C  80 7F 07 28 */	lwz r3, 0x728(r31)
/* 80C92150  38 03 00 01 */	addi r0, r3, 1
/* 80C92154  90 1F 07 28 */	stw r0, 0x728(r31)
/* 80C92158  48 00 00 38 */	b lbl_80C92190
lbl_80C9215C:
/* 80C9215C  88 1C 39 F6 */	lbz r0, 0x39f6(r28)
/* 80C92160  28 00 00 00 */	cmplwi r0, 0
/* 80C92164  40 82 00 2C */	bne lbl_80C92190
/* 80C92168  3C 80 80 C9 */	lis r4, lit_3924@ha /* 0x80C92D44@ha */
/* 80C9216C  38 C4 2D 44 */	addi r6, r4, lit_3924@l /* 0x80C92D44@l */
/* 80C92170  80 86 00 00 */	lwz r4, 0(r6)
/* 80C92174  80 06 00 04 */	lwz r0, 4(r6)
/* 80C92178  90 81 00 08 */	stw r4, 8(r1)
/* 80C9217C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C92180  80 06 00 08 */	lwz r0, 8(r6)
/* 80C92184  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C92188  38 81 00 08 */	addi r4, r1, 8
/* 80C9218C  4B FF F9 CD */	bl setAction__11daObjMATO_cFM11daObjMATO_cFPCvPvi_vi
lbl_80C92190:
/* 80C92190  39 61 00 30 */	addi r11, r1, 0x30
/* 80C92194  4B 6D 00 91 */	bl _restgpr_28
/* 80C92198  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C9219C  7C 08 03 A6 */	mtlr r0
/* 80C921A0  38 21 00 30 */	addi r1, r1, 0x30
/* 80C921A4  4E 80 00 20 */	blr 
