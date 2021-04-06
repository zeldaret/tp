lbl_801ED490:
/* 801ED490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ED494  7C 08 02 A6 */	mflr r0
/* 801ED498  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ED49C  A8 A3 06 80 */	lha r5, 0x680(r3)
/* 801ED4A0  7C A0 07 35 */	extsh. r0, r5
/* 801ED4A4  40 82 00 18 */	bne lbl_801ED4BC
/* 801ED4A8  3C 80 80 43 */	lis r4, g_ringHIO@ha /* 0x8042FAFC@ha */
/* 801ED4AC  38 84 FA FC */	addi r4, r4, g_ringHIO@l /* 0x8042FAFC@l */
/* 801ED4B0  A8 04 01 46 */	lha r0, 0x146(r4)
/* 801ED4B4  B0 03 06 80 */	sth r0, 0x680(r3)
/* 801ED4B8  48 00 00 38 */	b lbl_801ED4F0
lbl_801ED4BC:
/* 801ED4BC  3C 80 80 43 */	lis r4, g_ringHIO@ha /* 0x8042FAFC@ha */
/* 801ED4C0  38 84 FA FC */	addi r4, r4, g_ringHIO@l /* 0x8042FAFC@l */
/* 801ED4C4  A8 04 01 44 */	lha r0, 0x144(r4)
/* 801ED4C8  7C 05 00 00 */	cmpw r5, r0
/* 801ED4CC  40 80 00 24 */	bge lbl_801ED4F0
/* 801ED4D0  A8 04 01 48 */	lha r0, 0x148(r4)
/* 801ED4D4  7C 05 02 14 */	add r0, r5, r0
/* 801ED4D8  B0 03 06 80 */	sth r0, 0x680(r3)
/* 801ED4DC  A8 03 06 80 */	lha r0, 0x680(r3)
/* 801ED4E0  A8 84 01 44 */	lha r4, 0x144(r4)
/* 801ED4E4  7C 00 20 00 */	cmpw r0, r4
/* 801ED4E8  40 81 00 08 */	ble lbl_801ED4F0
/* 801ED4EC  B0 83 06 80 */	sth r4, 0x680(r3)
lbl_801ED4F0:
/* 801ED4F0  38 00 00 00 */	li r0, 0
/* 801ED4F4  B0 03 06 3A */	sth r0, 0x63a(r3)
/* 801ED4F8  38 00 00 3E */	li r0, 0x3e
/* 801ED4FC  90 01 00 08 */	stw r0, 8(r1)
/* 801ED500  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801ED504  38 81 00 08 */	addi r4, r1, 8
/* 801ED508  38 A0 00 00 */	li r5, 0
/* 801ED50C  38 C0 00 00 */	li r6, 0
/* 801ED510  38 E0 00 00 */	li r7, 0
/* 801ED514  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801ED518  FC 40 08 90 */	fmr f2, f1
/* 801ED51C  C0 62 A9 C0 */	lfs f3, lit_4465(r2)
/* 801ED520  FC 80 18 90 */	fmr f4, f3
/* 801ED524  39 00 00 00 */	li r8, 0
/* 801ED528  48 0B E4 5D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801ED52C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ED530  7C 08 03 A6 */	mtlr r0
/* 801ED534  38 21 00 10 */	addi r1, r1, 0x10
/* 801ED538  4E 80 00 20 */	blr 
