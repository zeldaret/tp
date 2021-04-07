lbl_803436A0:
/* 803436A0  7C 08 02 A6 */	mflr r0
/* 803436A4  90 01 00 04 */	stw r0, 4(r1)
/* 803436A8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803436AC  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 803436B0  3B 63 00 00 */	addi r27, r3, 0
/* 803436B4  3B 84 00 00 */	addi r28, r4, 0
/* 803436B8  54 64 30 32 */	slwi r4, r3, 6
/* 803436BC  3C 60 80 45 */	lis r3, Ecb@ha /* 0x8044C570@ha */
/* 803436C0  38 03 C5 70 */	addi r0, r3, Ecb@l /* 0x8044C570@l */
/* 803436C4  7F C0 22 14 */	add r30, r0, r4
/* 803436C8  38 7B 00 00 */	addi r3, r27, 0
/* 803436CC  4B FF FD 2D */	bl __EXIProbe
/* 803436D0  2C 03 00 00 */	cmpwi r3, 0
/* 803436D4  41 82 00 20 */	beq lbl_803436F4
/* 803436D8  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 803436DC  2C 00 00 00 */	cmpwi r0, 0
/* 803436E0  40 82 00 14 */	bne lbl_803436F4
/* 803436E4  38 7B 00 00 */	addi r3, r27, 0
/* 803436E8  38 80 00 00 */	li r4, 0
/* 803436EC  38 A1 00 1C */	addi r5, r1, 0x1c
/* 803436F0  48 00 0B 49 */	bl EXIGetID
lbl_803436F4:
/* 803436F4  4B FF A0 01 */	bl OSDisableInterrupts
/* 803436F8  7C 7D 1B 78 */	mr r29, r3
/* 803436FC  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 80343700  2C 00 00 00 */	cmpwi r0, 0
/* 80343704  40 82 00 14 */	bne lbl_80343718
/* 80343708  7F A3 EB 78 */	mr r3, r29
/* 8034370C  4B FF A0 11 */	bl OSRestoreInterrupts
/* 80343710  38 60 00 00 */	li r3, 0
/* 80343714  48 00 00 84 */	b lbl_80343798
lbl_80343718:
/* 80343718  4B FF 9F DD */	bl OSDisableInterrupts
/* 8034371C  7C 7F 1B 78 */	mr r31, r3
/* 80343720  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80343724  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80343728  40 82 00 14 */	bne lbl_8034373C
/* 8034372C  7F 63 DB 78 */	mr r3, r27
/* 80343730  4B FF FC C9 */	bl __EXIProbe
/* 80343734  2C 03 00 00 */	cmpwi r3, 0
/* 80343738  40 82 00 14 */	bne lbl_8034374C
lbl_8034373C:
/* 8034373C  7F E3 FB 78 */	mr r3, r31
/* 80343740  4B FF 9F DD */	bl OSRestoreInterrupts
/* 80343744  3B E0 00 00 */	li r31, 0
/* 80343748  48 00 00 44 */	b lbl_8034378C
lbl_8034374C:
/* 8034374C  38 7B 00 00 */	addi r3, r27, 0
/* 80343750  38 80 00 01 */	li r4, 1
/* 80343754  38 A0 00 00 */	li r5, 0
/* 80343758  38 C0 00 00 */	li r6, 0
/* 8034375C  4B FF FB D9 */	bl EXIClearInterrupts
/* 80343760  93 9E 00 08 */	stw r28, 8(r30)
/* 80343764  3C 60 00 10 */	lis r3, 0x10
/* 80343768  1C 1B 00 03 */	mulli r0, r27, 3
/* 8034376C  7C 63 04 30 */	srw r3, r3, r0
/* 80343770  4B FF A3 D5 */	bl __OSUnmaskInterrupts
/* 80343774  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80343778  60 00 00 08 */	ori r0, r0, 8
/* 8034377C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80343780  7F E3 FB 78 */	mr r3, r31
/* 80343784  4B FF 9F 99 */	bl OSRestoreInterrupts
/* 80343788  3B E0 00 01 */	li r31, 1
lbl_8034378C:
/* 8034378C  7F A3 EB 78 */	mr r3, r29
/* 80343790  4B FF 9F 8D */	bl OSRestoreInterrupts
/* 80343794  7F E3 FB 78 */	mr r3, r31
lbl_80343798:
/* 80343798  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8034379C  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 803437A0  38 21 00 40 */	addi r1, r1, 0x40
/* 803437A4  7C 08 03 A6 */	mtlr r0
/* 803437A8  4E 80 00 20 */	blr 
