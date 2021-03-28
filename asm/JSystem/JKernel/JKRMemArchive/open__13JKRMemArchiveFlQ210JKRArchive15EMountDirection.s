lbl_802D6BCC:
/* 802D6BCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D6BD0  7C 08 02 A6 */	mflr r0
/* 802D6BD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D6BD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D6BDC  7C 7F 1B 78 */	mr r31, r3
/* 802D6BE0  38 00 00 00 */	li r0, 0
/* 802D6BE4  90 03 00 64 */	stw r0, 0x64(r3)
/* 802D6BE8  90 03 00 44 */	stw r0, 0x44(r3)
/* 802D6BEC  90 03 00 68 */	stw r0, 0x68(r3)
/* 802D6BF0  90 03 00 48 */	stw r0, 0x48(r3)
/* 802D6BF4  90 03 00 4C */	stw r0, 0x4c(r3)
/* 802D6BF8  90 03 00 54 */	stw r0, 0x54(r3)
/* 802D6BFC  98 03 00 6C */	stb r0, 0x6c(r3)
/* 802D6C00  90 A3 00 60 */	stw r5, 0x60(r3)
/* 802D6C04  80 03 00 60 */	lwz r0, 0x60(r3)
/* 802D6C08  2C 00 00 01 */	cmpwi r0, 1
/* 802D6C0C  40 82 00 4C */	bne lbl_802D6C58
/* 802D6C10  38 01 00 14 */	addi r0, r1, 0x14
/* 802D6C14  90 01 00 08 */	stw r0, 8(r1)
/* 802D6C18  7C 83 23 78 */	mr r3, r4
/* 802D6C1C  38 80 00 00 */	li r4, 0
/* 802D6C20  38 A0 00 01 */	li r5, 1
/* 802D6C24  38 C0 00 00 */	li r6, 0
/* 802D6C28  80 FF 00 38 */	lwz r7, 0x38(r31)
/* 802D6C2C  39 00 00 01 */	li r8, 1
/* 802D6C30  39 20 00 00 */	li r9, 0
/* 802D6C34  39 5F 00 5C */	addi r10, r31, 0x5c
/* 802D6C38  48 00 30 1D */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D6C3C  90 7F 00 64 */	stw r3, 0x64(r31)
/* 802D6C40  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 802D6C44  28 03 00 00 */	cmplwi r3, 0
/* 802D6C48  41 82 00 54 */	beq lbl_802D6C9C
/* 802D6C4C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 802D6C50  48 06 49 31 */	bl DCInvalidateRange
/* 802D6C54  48 00 00 48 */	b lbl_802D6C9C
lbl_802D6C58:
/* 802D6C58  38 01 00 10 */	addi r0, r1, 0x10
/* 802D6C5C  90 01 00 08 */	stw r0, 8(r1)
/* 802D6C60  7C 83 23 78 */	mr r3, r4
/* 802D6C64  38 80 00 00 */	li r4, 0
/* 802D6C68  38 A0 00 01 */	li r5, 1
/* 802D6C6C  38 C0 00 00 */	li r6, 0
/* 802D6C70  80 FF 00 38 */	lwz r7, 0x38(r31)
/* 802D6C74  39 00 00 02 */	li r8, 2
/* 802D6C78  39 20 00 00 */	li r9, 0
/* 802D6C7C  39 5F 00 5C */	addi r10, r31, 0x5c
/* 802D6C80  48 00 2F D5 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D6C84  90 7F 00 64 */	stw r3, 0x64(r31)
/* 802D6C88  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 802D6C8C  28 03 00 00 */	cmplwi r3, 0
/* 802D6C90  41 82 00 0C */	beq lbl_802D6C9C
/* 802D6C94  80 81 00 10 */	lwz r4, 0x10(r1)
/* 802D6C98  48 06 48 E9 */	bl DCInvalidateRange
lbl_802D6C9C:
/* 802D6C9C  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 802D6CA0  28 03 00 00 */	cmplwi r3, 0
/* 802D6CA4  40 82 00 10 */	bne lbl_802D6CB4
/* 802D6CA8  38 00 00 00 */	li r0, 0
/* 802D6CAC  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802D6CB0  48 00 00 60 */	b lbl_802D6D10
lbl_802D6CB4:
/* 802D6CB4  80 03 00 08 */	lwz r0, 8(r3)
/* 802D6CB8  7C 03 02 14 */	add r0, r3, r0
/* 802D6CBC  90 1F 00 44 */	stw r0, 0x44(r31)
/* 802D6CC0  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D6CC4  80 03 00 04 */	lwz r0, 4(r3)
/* 802D6CC8  7C 03 02 14 */	add r0, r3, r0
/* 802D6CCC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 802D6CD0  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D6CD4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802D6CD8  7C 03 02 14 */	add r0, r3, r0
/* 802D6CDC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 802D6CE0  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D6CE4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802D6CE8  7C 03 02 14 */	add r0, r3, r0
/* 802D6CEC  90 1F 00 54 */	stw r0, 0x54(r31)
/* 802D6CF0  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 802D6CF4  80 64 00 0C */	lwz r3, 0xc(r4)
/* 802D6CF8  80 04 00 08 */	lwz r0, 8(r4)
/* 802D6CFC  7C 00 1A 14 */	add r0, r0, r3
/* 802D6D00  7C 04 02 14 */	add r0, r4, r0
/* 802D6D04  90 1F 00 68 */	stw r0, 0x68(r31)
/* 802D6D08  38 00 00 01 */	li r0, 1
/* 802D6D0C  98 1F 00 6C */	stb r0, 0x6c(r31)
lbl_802D6D10:
/* 802D6D10  88 7F 00 3C */	lbz r3, 0x3c(r31)
/* 802D6D14  30 03 FF FF */	addic r0, r3, -1
/* 802D6D18  7C 60 19 10 */	subfe r3, r0, r3
/* 802D6D1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D6D20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D6D24  7C 08 03 A6 */	mtlr r0
/* 802D6D28  38 21 00 20 */	addi r1, r1, 0x20
/* 802D6D2C  4E 80 00 20 */	blr 
