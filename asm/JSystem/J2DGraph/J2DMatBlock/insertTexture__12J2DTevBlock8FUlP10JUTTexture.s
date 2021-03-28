lbl_802EF67C:
/* 802EF67C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EF680  7C 08 02 A6 */	mflr r0
/* 802EF684  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EF688  39 61 00 20 */	addi r11, r1, 0x20
/* 802EF68C  48 07 2B 51 */	bl _savegpr_29
/* 802EF690  7C 7D 1B 78 */	mr r29, r3
/* 802EF694  7C 9E 23 78 */	mr r30, r4
/* 802EF698  7C BF 2B 78 */	mr r31, r5
/* 802EF69C  28 1E 00 08 */	cmplwi r30, 8
/* 802EF6A0  40 80 00 0C */	bge lbl_802EF6AC
/* 802EF6A4  28 1F 00 00 */	cmplwi r31, 0
/* 802EF6A8  40 82 00 0C */	bne lbl_802EF6B4
lbl_802EF6AC:
/* 802EF6AC  38 60 00 00 */	li r3, 0
/* 802EF6B0  48 00 01 44 */	b lbl_802EF7F4
lbl_802EF6B4:
/* 802EF6B4  38 80 00 00 */	li r4, 0
/* 802EF6B8  48 00 00 28 */	b lbl_802EF6E0
lbl_802EF6BC:
/* 802EF6BC  54 83 15 BA */	rlwinm r3, r4, 2, 0x16, 0x1d
/* 802EF6C0  38 03 00 DC */	addi r0, r3, 0xdc
/* 802EF6C4  7C 7D 00 2E */	lwzx r3, r29, r0
/* 802EF6C8  28 03 00 00 */	cmplwi r3, 0
/* 802EF6CC  41 82 00 20 */	beq lbl_802EF6EC
/* 802EF6D0  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802EF6D4  28 00 00 00 */	cmplwi r0, 0
/* 802EF6D8  41 82 00 14 */	beq lbl_802EF6EC
/* 802EF6DC  38 84 00 01 */	addi r4, r4, 1
lbl_802EF6E0:
/* 802EF6E0  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802EF6E4  28 00 00 08 */	cmplwi r0, 8
/* 802EF6E8  41 80 FF D4 */	blt lbl_802EF6BC
lbl_802EF6EC:
/* 802EF6EC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802EF6F0  7C 00 F0 40 */	cmplw r0, r30
/* 802EF6F4  40 80 00 0C */	bge lbl_802EF700
/* 802EF6F8  38 60 00 00 */	li r3, 0
/* 802EF6FC  48 00 00 F8 */	b lbl_802EF7F4
lbl_802EF700:
/* 802EF700  28 00 00 08 */	cmplwi r0, 8
/* 802EF704  40 82 00 0C */	bne lbl_802EF710
/* 802EF708  38 60 00 00 */	li r3, 0
/* 802EF70C  48 00 00 E8 */	b lbl_802EF7F4
lbl_802EF710:
/* 802EF710  80 7D 00 F8 */	lwz r3, 0xf8(r29)
/* 802EF714  28 03 00 00 */	cmplwi r3, 0
/* 802EF718  41 82 00 30 */	beq lbl_802EF748
/* 802EF71C  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802EF720  28 00 00 00 */	cmplwi r0, 0
/* 802EF724  40 82 00 24 */	bne lbl_802EF748
/* 802EF728  88 1D 01 20 */	lbz r0, 0x120(r29)
/* 802EF72C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802EF730  41 82 00 0C */	beq lbl_802EF73C
/* 802EF734  38 80 00 01 */	li r4, 1
/* 802EF738  4B FE EA FD */	bl __dt__10JUTTextureFv
lbl_802EF73C:
/* 802EF73C  88 1D 01 20 */	lbz r0, 0x120(r29)
/* 802EF740  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 802EF744  98 1D 01 20 */	stb r0, 0x120(r29)
lbl_802EF748:
/* 802EF748  38 E0 00 07 */	li r7, 7
/* 802EF74C  48 00 00 40 */	b lbl_802EF78C
lbl_802EF750:
/* 802EF750  54 80 10 3A */	slwi r0, r4, 2
/* 802EF754  7C BD 02 14 */	add r5, r29, r0
/* 802EF758  80 65 00 D8 */	lwz r3, 0xd8(r5)
/* 802EF75C  54 E0 15 BA */	rlwinm r0, r7, 2, 0x16, 0x1d
/* 802EF760  7C DD 02 14 */	add r6, r29, r0
/* 802EF764  90 66 00 DC */	stw r3, 0xdc(r6)
/* 802EF768  80 05 00 F8 */	lwz r0, 0xf8(r5)
/* 802EF76C  90 06 00 FC */	stw r0, 0xfc(r6)
/* 802EF770  54 83 08 3C */	slwi r3, r4, 1
/* 802EF774  38 03 00 02 */	addi r0, r3, 2
/* 802EF778  7C 9D 02 2E */	lhzx r4, r29, r0
/* 802EF77C  54 E3 0D FC */	rlwinm r3, r7, 1, 0x17, 0x1e
/* 802EF780  38 03 00 04 */	addi r0, r3, 4
/* 802EF784  7C 9D 03 2E */	sthx r4, r29, r0
/* 802EF788  38 E7 FF FF */	addi r7, r7, -1
lbl_802EF78C:
/* 802EF78C  54 E4 06 3E */	clrlwi r4, r7, 0x18
/* 802EF790  7C 04 F0 40 */	cmplw r4, r30
/* 802EF794  41 81 FF BC */	bgt lbl_802EF750
/* 802EF798  57 C0 10 3A */	slwi r0, r30, 2
/* 802EF79C  7C 7D 02 14 */	add r3, r29, r0
/* 802EF7A0  93 E3 00 DC */	stw r31, 0xdc(r3)
/* 802EF7A4  38 00 00 00 */	li r0, 0
/* 802EF7A8  90 03 00 FC */	stw r0, 0xfc(r3)
/* 802EF7AC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802EF7B0  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802EF7B4  57 C0 08 3C */	slwi r0, r30, 1
/* 802EF7B8  7C 7D 02 14 */	add r3, r29, r0
/* 802EF7BC  B0 83 00 04 */	sth r4, 4(r3)
/* 802EF7C0  7F A3 EB 78 */	mr r3, r29
/* 802EF7C4  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 802EF7C8  38 A0 00 01 */	li r5, 1
/* 802EF7CC  81 9D 00 00 */	lwz r12, 0(r29)
/* 802EF7D0  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 802EF7D4  7D 89 03 A6 */	mtctr r12
/* 802EF7D8  4E 80 04 21 */	bctrl 
/* 802EF7DC  88 7D 01 20 */	lbz r3, 0x120(r29)
/* 802EF7E0  38 00 00 01 */	li r0, 1
/* 802EF7E4  7C 00 F0 30 */	slw r0, r0, r30
/* 802EF7E8  7C 60 00 78 */	andc r0, r3, r0
/* 802EF7EC  98 1D 01 20 */	stb r0, 0x120(r29)
/* 802EF7F0  38 60 00 01 */	li r3, 1
lbl_802EF7F4:
/* 802EF7F4  39 61 00 20 */	addi r11, r1, 0x20
/* 802EF7F8  48 07 2A 31 */	bl _restgpr_29
/* 802EF7FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EF800  7C 08 03 A6 */	mtlr r0
/* 802EF804  38 21 00 20 */	addi r1, r1, 0x20
/* 802EF808  4E 80 00 20 */	blr 
