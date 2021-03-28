lbl_8002B008:
/* 8002B008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002B00C  7C 08 02 A6 */	mflr r0
/* 8002B010  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002B014  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002B018  7C 7F 1B 79 */	or. r31, r3, r3
/* 8002B01C  41 82 00 80 */	beq lbl_8002B09C
/* 8002B020  3C 60 80 3A */	lis r3, __vt__28renderingPlusDoorAndCursor_c@ha
/* 8002B024  38 03 7E 24 */	addi r0, r3, __vt__28renderingPlusDoorAndCursor_c@l
/* 8002B028  90 1F 00 00 */	stw r0, 0(r31)
/* 8002B02C  41 82 00 60 */	beq lbl_8002B08C
/* 8002B030  3C 60 80 3A */	lis r3, __vt__19renderingPlusDoor_c@ha
/* 8002B034  38 03 7D 80 */	addi r0, r3, __vt__19renderingPlusDoor_c@l
/* 8002B038  90 1F 00 00 */	stw r0, 0(r31)
/* 8002B03C  41 82 00 50 */	beq lbl_8002B08C
/* 8002B040  3C 60 80 3A */	lis r3, __vt__16renderingDAmap_c@ha
/* 8002B044  38 03 7E E0 */	addi r0, r3, __vt__16renderingDAmap_c@l
/* 8002B048  90 1F 00 00 */	stw r0, 0(r31)
/* 8002B04C  41 82 00 40 */	beq lbl_8002B08C
/* 8002B050  3C 60 80 3A */	lis r3, __vt__18dRenderingFDAmap_c@ha
/* 8002B054  38 03 7C 90 */	addi r0, r3, __vt__18dRenderingFDAmap_c@l
/* 8002B058  90 1F 00 00 */	stw r0, 0(r31)
/* 8002B05C  41 82 00 30 */	beq lbl_8002B08C
/* 8002B060  3C 60 80 3A */	lis r3, __vt__15dRenderingMap_c@ha
/* 8002B064  38 03 6F D4 */	addi r0, r3, __vt__15dRenderingMap_c@l
/* 8002B068  90 1F 00 00 */	stw r0, 0(r31)
/* 8002B06C  41 82 00 20 */	beq lbl_8002B08C
/* 8002B070  3C 60 80 3A */	lis r3, __vt__28dDrawPathWithNormalPattern_c@ha
/* 8002B074  38 03 6F 94 */	addi r0, r3, __vt__28dDrawPathWithNormalPattern_c@l
/* 8002B078  90 1F 00 00 */	stw r0, 0(r31)
/* 8002B07C  41 82 00 10 */	beq lbl_8002B08C
/* 8002B080  3C 60 80 3A */	lis r3, __vt__11dDrawPath_c@ha
/* 8002B084  38 03 7C F8 */	addi r0, r3, __vt__11dDrawPath_c@l
/* 8002B088  90 1F 00 00 */	stw r0, 0(r31)
lbl_8002B08C:
/* 8002B08C  7C 80 07 35 */	extsh. r0, r4
/* 8002B090  40 81 00 0C */	ble lbl_8002B09C
/* 8002B094  7F E3 FB 78 */	mr r3, r31
/* 8002B098  48 2A 3C A5 */	bl __dl__FPv
lbl_8002B09C:
/* 8002B09C  7F E3 FB 78 */	mr r3, r31
/* 8002B0A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002B0A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002B0A8  7C 08 03 A6 */	mtlr r0
/* 8002B0AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8002B0B0  4E 80 00 20 */	blr 
