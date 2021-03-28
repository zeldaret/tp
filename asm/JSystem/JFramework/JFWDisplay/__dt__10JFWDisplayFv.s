lbl_80272160:
/* 80272160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80272164  7C 08 02 A6 */	mflr r0
/* 80272168  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027216C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80272170  93 C1 00 08 */	stw r30, 8(r1)
/* 80272174  7C 7E 1B 79 */	or. r30, r3, r3
/* 80272178  7C 9F 23 78 */	mr r31, r4
/* 8027217C  41 82 00 44 */	beq lbl_802721C0
/* 80272180  3C 80 80 3C */	lis r4, __vt__10JFWDisplay@ha
/* 80272184  38 04 40 A0 */	addi r0, r4, __vt__10JFWDisplay@l
/* 80272188  90 1E 00 00 */	stw r0, 0(r30)
/* 8027218C  80 0D 8F B8 */	lwz r0, sManager__8JUTVideo(r13)
/* 80272190  28 00 00 00 */	cmplwi r0, 0
/* 80272194  41 82 00 0C */	beq lbl_802721A0
/* 80272198  38 80 00 02 */	li r4, 2
/* 8027219C  48 00 0A C5 */	bl waitBlanking__10JFWDisplayFi
lbl_802721A0:
/* 802721A0  48 07 38 89 */	bl destroy__10JUTProcBarFv
/* 802721A4  48 07 32 81 */	bl destroyManager__6JUTXfbFv
/* 802721A8  38 00 00 00 */	li r0, 0
/* 802721AC  90 1E 00 10 */	stw r0, 0x10(r30)
/* 802721B0  7F E0 07 35 */	extsh. r0, r31
/* 802721B4  40 81 00 0C */	ble lbl_802721C0
/* 802721B8  7F C3 F3 78 */	mr r3, r30
/* 802721BC  48 05 CB 81 */	bl __dl__FPv
lbl_802721C0:
/* 802721C0  7F C3 F3 78 */	mr r3, r30
/* 802721C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802721C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802721CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802721D0  7C 08 03 A6 */	mtlr r0
/* 802721D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802721D8  4E 80 00 20 */	blr 
