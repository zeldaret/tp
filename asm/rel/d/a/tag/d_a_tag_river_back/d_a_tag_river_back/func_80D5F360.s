lbl_80D5F360:
/* 80D5F360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5F364  7C 08 02 A6 */	mflr r0
/* 80D5F368  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5F36C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5F370  93 C1 00 08 */	stw r30, 8(r1)
/* 80D5F374  7C 7E 1B 78 */	mr r30, r3
/* 80D5F378  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D5F37C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D5F380  40 82 00 1C */	bne lbl_80D5F39C
/* 80D5F384  28 1E 00 00 */	cmplwi r30, 0
/* 80D5F388  41 82 00 08 */	beq lbl_80D5F390
/* 80D5F38C  4B 2B 97 D8 */	b __ct__10fopAc_ac_cFv
lbl_80D5F390:
/* 80D5F390  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80D5F394  60 00 00 08 */	ori r0, r0, 8
/* 80D5F398  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80D5F39C:
/* 80D5F39C  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D5F3A0  3C 80 80 D6 */	lis r4, l_arcName@ha
/* 80D5F3A4  38 84 F9 A0 */	addi r4, r4, l_arcName@l
/* 80D5F3A8  80 84 00 00 */	lwz r4, 0(r4)
/* 80D5F3AC  4B 2C DB 10 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D5F3B0  7C 7F 1B 78 */	mr r31, r3
/* 80D5F3B4  2C 1F 00 04 */	cmpwi r31, 4
/* 80D5F3B8  40 82 00 1C */	bne lbl_80D5F3D4
/* 80D5F3BC  7F C3 F3 78 */	mr r3, r30
/* 80D5F3C0  4B FF FF 39 */	bl Create__16daTagRiverBack_cFv
/* 80D5F3C4  2C 03 00 00 */	cmpwi r3, 0
/* 80D5F3C8  40 82 00 0C */	bne lbl_80D5F3D4
/* 80D5F3CC  38 60 00 05 */	li r3, 5
/* 80D5F3D0  48 00 00 08 */	b lbl_80D5F3D8
lbl_80D5F3D4:
/* 80D5F3D4  7F E3 FB 78 */	mr r3, r31
lbl_80D5F3D8:
/* 80D5F3D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5F3DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D5F3E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5F3E4  7C 08 03 A6 */	mtlr r0
/* 80D5F3E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5F3EC  4E 80 00 20 */	blr 
