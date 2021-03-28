lbl_802EE6A0:
/* 802EE6A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EE6A4  7C 08 02 A6 */	mflr r0
/* 802EE6A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EE6AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EE6B0  93 C1 00 08 */	stw r30, 8(r1)
/* 802EE6B4  7C 7E 1B 78 */	mr r30, r3
/* 802EE6B8  7C 9F 23 78 */	mr r31, r4
/* 802EE6BC  28 1F 00 04 */	cmplwi r31, 4
/* 802EE6C0  41 80 00 0C */	blt lbl_802EE6CC
/* 802EE6C4  38 60 00 00 */	li r3, 0
/* 802EE6C8  48 00 00 B8 */	b lbl_802EE780
lbl_802EE6CC:
/* 802EE6CC  88 7E 00 B0 */	lbz r3, 0xb0(r30)
/* 802EE6D0  38 00 00 01 */	li r0, 1
/* 802EE6D4  7C 00 F8 30 */	slw r0, r0, r31
/* 802EE6D8  7C 60 00 39 */	and. r0, r3, r0
/* 802EE6DC  41 82 00 18 */	beq lbl_802EE6F4
/* 802EE6E0  57 E0 10 3A */	slwi r0, r31, 2
/* 802EE6E4  7C 7E 02 14 */	add r3, r30, r0
/* 802EE6E8  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 802EE6EC  38 80 00 01 */	li r4, 1
/* 802EE6F0  4B FE FB 45 */	bl __dt__10JUTTextureFv
lbl_802EE6F4:
/* 802EE6F4  57 E0 10 3A */	slwi r0, r31, 2
/* 802EE6F8  7C 7E 02 14 */	add r3, r30, r0
/* 802EE6FC  80 63 00 9C */	lwz r3, 0x9c(r3)
/* 802EE700  4B FE 06 3D */	bl __dl__FPv
/* 802EE704  57 E4 10 3A */	slwi r4, r31, 2
/* 802EE708  57 E3 08 3C */	slwi r3, r31, 1
/* 802EE70C  20 1F 00 03 */	subfic r0, r31, 3
/* 802EE710  7C 09 03 A6 */	mtctr r0
/* 802EE714  28 1F 00 03 */	cmplwi r31, 3
/* 802EE718  40 80 00 30 */	bge lbl_802EE748
lbl_802EE71C:
/* 802EE71C  7C BE 22 14 */	add r5, r30, r4
/* 802EE720  80 05 00 90 */	lwz r0, 0x90(r5)
/* 802EE724  90 05 00 8C */	stw r0, 0x8c(r5)
/* 802EE728  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 802EE72C  90 05 00 9C */	stw r0, 0x9c(r5)
/* 802EE730  7C BE 1A 14 */	add r5, r30, r3
/* 802EE734  A0 05 00 06 */	lhz r0, 6(r5)
/* 802EE738  B0 05 00 04 */	sth r0, 4(r5)
/* 802EE73C  38 63 00 02 */	addi r3, r3, 2
/* 802EE740  38 84 00 04 */	addi r4, r4, 4
/* 802EE744  42 00 FF D8 */	bdnz lbl_802EE71C
lbl_802EE748:
/* 802EE748  38 00 00 00 */	li r0, 0
/* 802EE74C  90 1E 00 98 */	stw r0, 0x98(r30)
/* 802EE750  90 1E 00 A8 */	stw r0, 0xa8(r30)
/* 802EE754  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802EE758  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802EE75C  B0 1E 00 0A */	sth r0, 0xa(r30)
/* 802EE760  7F C3 F3 78 */	mr r3, r30
/* 802EE764  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 802EE768  38 A0 00 00 */	li r5, 0
/* 802EE76C  81 9E 00 00 */	lwz r12, 0(r30)
/* 802EE770  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 802EE774  7D 89 03 A6 */	mtctr r12
/* 802EE778  4E 80 04 21 */	bctrl 
/* 802EE77C  38 60 00 01 */	li r3, 1
lbl_802EE780:
/* 802EE780  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EE784  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EE788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EE78C  7C 08 03 A6 */	mtlr r0
/* 802EE790  38 21 00 10 */	addi r1, r1, 0x10
/* 802EE794  4E 80 00 20 */	blr 
