lbl_8033FEF0:
/* 8033FEF0  7C 08 02 A6 */	mflr r0
/* 8033FEF4  3C C0 80 34 */	lis r6, WriteSramCallback@ha /* 0x8033FE90@ha */
/* 8033FEF8  90 01 00 04 */	stw r0, 4(r1)
/* 8033FEFC  38 06 FE 90 */	addi r0, r6, WriteSramCallback@l /* 0x8033FE90@l */
/* 8033FF00  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8033FF04  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8033FF08  3B E4 00 00 */	addi r31, r4, 0
/* 8033FF0C  38 80 00 01 */	li r4, 1
/* 8033FF10  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8033FF14  3B C5 00 00 */	addi r30, r5, 0
/* 8033FF18  7C 05 03 78 */	mr r5, r0
/* 8033FF1C  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8033FF20  3B A3 00 00 */	addi r29, r3, 0
/* 8033FF24  38 60 00 00 */	li r3, 0
/* 8033FF28  48 00 41 01 */	bl EXILock
/* 8033FF2C  2C 03 00 00 */	cmpwi r3, 0
/* 8033FF30  40 82 00 0C */	bne lbl_8033FF3C
/* 8033FF34  38 60 00 00 */	li r3, 0
/* 8033FF38  48 00 00 B4 */	b lbl_8033FFEC
lbl_8033FF3C:
/* 8033FF3C  38 60 00 00 */	li r3, 0
/* 8033FF40  38 80 00 01 */	li r4, 1
/* 8033FF44  38 A0 00 03 */	li r5, 3
/* 8033FF48  48 00 39 21 */	bl EXISelect
/* 8033FF4C  2C 03 00 00 */	cmpwi r3, 0
/* 8033FF50  40 82 00 14 */	bne lbl_8033FF64
/* 8033FF54  38 60 00 00 */	li r3, 0
/* 8033FF58  48 00 41 C5 */	bl EXIUnlock
/* 8033FF5C  38 60 00 00 */	li r3, 0
/* 8033FF60  48 00 00 8C */	b lbl_8033FFEC
lbl_8033FF64:
/* 8033FF64  57 FF 30 32 */	slwi r31, r31, 6
/* 8033FF68  38 1F 01 00 */	addi r0, r31, 0x100
/* 8033FF6C  64 00 A0 00 */	oris r0, r0, 0xa000
/* 8033FF70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033FF74  38 81 00 14 */	addi r4, r1, 0x14
/* 8033FF78  38 60 00 00 */	li r3, 0
/* 8033FF7C  38 A0 00 04 */	li r5, 4
/* 8033FF80  38 C0 00 01 */	li r6, 1
/* 8033FF84  38 E0 00 00 */	li r7, 0
/* 8033FF88  48 00 2D 79 */	bl EXIImm
/* 8033FF8C  7C 60 00 34 */	cntlzw r0, r3
/* 8033FF90  54 1F D9 7E */	srwi r31, r0, 5
/* 8033FF94  38 60 00 00 */	li r3, 0
/* 8033FF98  48 00 31 51 */	bl EXISync
/* 8033FF9C  7C 60 00 34 */	cntlzw r0, r3
/* 8033FFA0  54 00 D9 7E */	srwi r0, r0, 5
/* 8033FFA4  38 9D 00 00 */	addi r4, r29, 0
/* 8033FFA8  38 BE 00 00 */	addi r5, r30, 0
/* 8033FFAC  7F FF 03 78 */	or r31, r31, r0
/* 8033FFB0  38 60 00 00 */	li r3, 0
/* 8033FFB4  38 C0 00 01 */	li r6, 1
/* 8033FFB8  48 00 2F A5 */	bl EXIImmEx
/* 8033FFBC  7C 60 00 34 */	cntlzw r0, r3
/* 8033FFC0  54 00 D9 7E */	srwi r0, r0, 5
/* 8033FFC4  7F FF 03 78 */	or r31, r31, r0
/* 8033FFC8  38 60 00 00 */	li r3, 0
/* 8033FFCC  48 00 39 C9 */	bl EXIDeselect
/* 8033FFD0  7C 60 00 34 */	cntlzw r0, r3
/* 8033FFD4  54 00 D9 7E */	srwi r0, r0, 5
/* 8033FFD8  7F FF 03 78 */	or r31, r31, r0
/* 8033FFDC  38 60 00 00 */	li r3, 0
/* 8033FFE0  48 00 41 3D */	bl EXIUnlock
/* 8033FFE4  7F E0 00 34 */	cntlzw r0, r31
/* 8033FFE8  54 03 D9 7E */	srwi r3, r0, 5
lbl_8033FFEC:
/* 8033FFEC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8033FFF0  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8033FFF4  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8033FFF8  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8033FFFC  38 21 00 28 */	addi r1, r1, 0x28
/* 80340000  7C 08 03 A6 */	mtlr r0
/* 80340004  4E 80 00 20 */	blr 
