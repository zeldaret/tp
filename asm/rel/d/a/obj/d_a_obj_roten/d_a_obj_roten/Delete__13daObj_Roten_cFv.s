lbl_80CC1254:
/* 80CC1254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC1258  7C 08 02 A6 */	mflr r0
/* 80CC125C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC1260  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC1264  7C 7F 1B 78 */	mr r31, r3
/* 80CC1268  38 60 00 00 */	li r3, 0
/* 80CC126C  38 A0 00 01 */	li r5, 1
/* 80CC1270  7C 64 1B 78 */	mr r4, r3
/* 80CC1274  38 00 00 02 */	li r0, 2
/* 80CC1278  7C 09 03 A6 */	mtctr r0
lbl_80CC127C:
/* 80CC127C  38 E3 05 AC */	addi r7, r3, 0x5ac
/* 80CC1280  7C DF 38 2E */	lwzx r6, r31, r7
/* 80CC1284  28 06 00 00 */	cmplwi r6, 0
/* 80CC1288  41 82 00 28 */	beq lbl_80CC12B0
/* 80CC128C  80 06 00 F4 */	lwz r0, 0xf4(r6)
/* 80CC1290  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80CC1294  90 06 00 F4 */	stw r0, 0xf4(r6)
/* 80CC1298  7C DF 38 2E */	lwzx r6, r31, r7
/* 80CC129C  80 06 00 F4 */	lwz r0, 0xf4(r6)
/* 80CC12A0  60 00 00 01 */	ori r0, r0, 1
/* 80CC12A4  90 06 00 F4 */	stw r0, 0xf4(r6)
/* 80CC12A8  90 A6 00 24 */	stw r5, 0x24(r6)
/* 80CC12AC  7C 9F 39 2E */	stwx r4, r31, r7
lbl_80CC12B0:
/* 80CC12B0  38 63 00 04 */	addi r3, r3, 4
/* 80CC12B4  42 00 FF C8 */	bdnz lbl_80CC127C
/* 80CC12B8  7F E3 FB 78 */	mr r3, r31
/* 80CC12BC  48 00 00 29 */	bl getResName__13daObj_Roten_cFv
/* 80CC12C0  7C 64 1B 78 */	mr r4, r3
/* 80CC12C4  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80CC12C8  4B 36 BD 40 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CC12CC  38 60 00 01 */	li r3, 1
/* 80CC12D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC12D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC12D8  7C 08 03 A6 */	mtlr r0
/* 80CC12DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC12E0  4E 80 00 20 */	blr 
