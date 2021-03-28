lbl_802D4958:
/* 802D4958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D495C  7C 08 02 A6 */	mflr r0
/* 802D4960  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D4964  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D4968  7C 7F 1B 79 */	or. r31, r3, r3
/* 802D496C  41 82 00 30 */	beq lbl_802D499C
/* 802D4970  3C 60 80 3D */	lis r3, __vt__12JKRArcFinder@ha
/* 802D4974  38 03 C2 18 */	addi r0, r3, __vt__12JKRArcFinder@l
/* 802D4978  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802D497C  41 82 00 10 */	beq lbl_802D498C
/* 802D4980  3C 60 80 3D */	lis r3, __vt__13JKRFileFinder@ha
/* 802D4984  38 03 C2 28 */	addi r0, r3, __vt__13JKRFileFinder@l
/* 802D4988  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_802D498C:
/* 802D498C  7C 80 07 35 */	extsh. r0, r4
/* 802D4990  40 81 00 0C */	ble lbl_802D499C
/* 802D4994  7F E3 FB 78 */	mr r3, r31
/* 802D4998  4B FF A3 A5 */	bl __dl__FPv
lbl_802D499C:
/* 802D499C  7F E3 FB 78 */	mr r3, r31
/* 802D49A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D49A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D49A8  7C 08 03 A6 */	mtlr r0
/* 802D49AC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D49B0  4E 80 00 20 */	blr 
