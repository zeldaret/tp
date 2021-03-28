lbl_802DBFF0:
/* 802DBFF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DBFF4  7C 08 02 A6 */	mflr r0
/* 802DBFF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DBFFC  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC000  48 08 61 DD */	bl _savegpr_29
/* 802DC004  7C 7D 1B 78 */	mr r29, r3
/* 802DC008  7C 9E 23 78 */	mr r30, r4
/* 802DC00C  80 64 00 04 */	lwz r3, 4(r4)
/* 802DC010  7C 60 00 34 */	cntlzw r0, r3
/* 802DC014  54 1F D9 7E */	srwi r31, r0, 5
/* 802DC018  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 802DC01C  40 82 00 0C */	bne lbl_802DC028
/* 802DC020  48 00 01 3D */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802DC024  7C 7F 1B 78 */	mr r31, r3
lbl_802DC028:
/* 802DC028  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802DC02C  41 82 00 4C */	beq lbl_802DC078
/* 802DC030  80 1D 00 08 */	lwz r0, 8(r29)
/* 802DC034  28 00 00 00 */	cmplwi r0, 0
/* 802DC038  40 82 00 14 */	bne lbl_802DC04C
/* 802DC03C  7F A3 EB 78 */	mr r3, r29
/* 802DC040  7F C4 F3 78 */	mr r4, r30
/* 802DC044  4B FF FE E5 */	bl setFirst__10JSUPtrListFP10JSUPtrLink
/* 802DC048  48 00 00 30 */	b lbl_802DC078
lbl_802DC04C:
/* 802DC04C  93 BE 00 04 */	stw r29, 4(r30)
/* 802DC050  38 00 00 00 */	li r0, 0
/* 802DC054  90 1E 00 08 */	stw r0, 8(r30)
/* 802DC058  80 1D 00 00 */	lwz r0, 0(r29)
/* 802DC05C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802DC060  80 7D 00 00 */	lwz r3, 0(r29)
/* 802DC064  93 C3 00 08 */	stw r30, 8(r3)
/* 802DC068  93 DD 00 00 */	stw r30, 0(r29)
/* 802DC06C  80 7D 00 08 */	lwz r3, 8(r29)
/* 802DC070  38 03 00 01 */	addi r0, r3, 1
/* 802DC074  90 1D 00 08 */	stw r0, 8(r29)
lbl_802DC078:
/* 802DC078  7F E3 FB 78 */	mr r3, r31
/* 802DC07C  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC080  48 08 61 A9 */	bl _restgpr_29
/* 802DC084  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DC088  7C 08 03 A6 */	mtlr r0
/* 802DC08C  38 21 00 20 */	addi r1, r1, 0x20
/* 802DC090  4E 80 00 20 */	blr 
