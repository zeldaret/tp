lbl_80284BF0:
/* 80284BF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80284BF4  7C 08 02 A6 */	mflr r0
/* 80284BF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80284BFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80284C00  48 0D D5 DD */	bl _savegpr_29
/* 80284C04  7C DD 33 78 */	mr r29, r6
/* 80284C08  80 C4 00 00 */	lwz r6, 0(r4)
/* 80284C0C  90 C1 00 08 */	stw r6, 8(r1)
/* 80284C10  80 06 00 00 */	lwz r0, 0(r6)
/* 80284C14  7C 06 02 14 */	add r0, r6, r0
/* 80284C18  90 04 00 00 */	stw r0, 0(r4)
/* 80284C1C  80 81 00 08 */	lwz r4, 8(r1)
/* 80284C20  80 04 00 00 */	lwz r0, 0(r4)
/* 80284C24  90 05 00 00 */	stw r0, 0(r5)
/* 80284C28  83 E3 00 04 */	lwz r31, 4(r3)
/* 80284C2C  57 A0 06 F7 */	rlwinm. r0, r29, 0, 0x1b, 0x1b
/* 80284C30  41 82 00 38 */	beq lbl_80284C68
/* 80284C34  80 61 00 08 */	lwz r3, 8(r1)
/* 80284C38  A0 03 00 06 */	lhz r0, 6(r3)
/* 80284C3C  38 80 00 00 */	li r4, 0
/* 80284C40  28 00 00 00 */	cmplwi r0, 0
/* 80284C44  41 82 00 08 */	beq lbl_80284C4C
/* 80284C48  38 83 00 08 */	addi r4, r3, 8
lbl_80284C4C:
/* 80284C4C  7F E3 FB 78 */	mr r3, r31
/* 80284C50  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 80284C54  4B FF FB E1 */	bl getObject__Q37JStudio3fvb8TControlFPCvUl
/* 80284C58  28 03 00 00 */	cmplwi r3, 0
/* 80284C5C  41 82 00 0C */	beq lbl_80284C68
/* 80284C60  38 60 00 01 */	li r3, 1
/* 80284C64  48 00 00 68 */	b lbl_80284CCC
lbl_80284C68:
/* 80284C68  57 A0 06 B5 */	rlwinm. r0, r29, 0, 0x1a, 0x1a
/* 80284C6C  41 82 00 0C */	beq lbl_80284C78
/* 80284C70  38 60 00 01 */	li r3, 1
/* 80284C74  48 00 00 58 */	b lbl_80284CCC
lbl_80284C78:
/* 80284C78  80 7F 00 04 */	lwz r3, 4(r31)
/* 80284C7C  28 03 00 00 */	cmplwi r3, 0
/* 80284C80  40 82 00 0C */	bne lbl_80284C8C
/* 80284C84  38 60 00 00 */	li r3, 0
/* 80284C88  48 00 00 44 */	b lbl_80284CCC
lbl_80284C8C:
/* 80284C8C  38 81 00 08 */	addi r4, r1, 8
/* 80284C90  81 83 00 00 */	lwz r12, 0(r3)
/* 80284C94  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80284C98  7D 89 03 A6 */	mtctr r12
/* 80284C9C  4E 80 04 21 */	bctrl 
/* 80284CA0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80284CA4  40 82 00 0C */	bne lbl_80284CB0
/* 80284CA8  57 A3 D7 FE */	rlwinm r3, r29, 0x1a, 0x1f, 0x1f
/* 80284CAC  48 00 00 20 */	b lbl_80284CCC
lbl_80284CB0:
/* 80284CB0  38 81 00 08 */	addi r4, r1, 8
/* 80284CB4  7F E5 FB 78 */	mr r5, r31
/* 80284CB8  4B FF F3 11 */	bl prepare__Q37JStudio3fvb7TObjectFRCQ47JStudio3fvb4data13TParse_TBlockPQ37JStudio3fvb8TControl
/* 80284CBC  7F E3 FB 78 */	mr r3, r31
/* 80284CC0  7F C4 F3 78 */	mr r4, r30
/* 80284CC4  4B FF FA 41 */	bl appendObject__Q37JStudio3fvb8TControlFPQ37JStudio3fvb7TObject
/* 80284CC8  38 60 00 01 */	li r3, 1
lbl_80284CCC:
/* 80284CCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80284CD0  48 0D D5 59 */	bl _restgpr_29
/* 80284CD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80284CD8  7C 08 03 A6 */	mtlr r0
/* 80284CDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80284CE0  4E 80 00 20 */	blr 
