lbl_8049F710:
/* 8049F710  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049F714  7C 08 02 A6 */	mflr r0
/* 8049F718  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049F71C  39 61 00 20 */	addi r11, r1, 0x20
/* 8049F720  4B EC 2A B9 */	bl _savegpr_28
/* 8049F724  7C 7F 1B 78 */	mr r31, r3
/* 8049F728  2C 04 00 00 */	cmpwi r4, 0
/* 8049F72C  40 82 00 0C */	bne lbl_8049F738
/* 8049F730  38 00 00 00 */	li r0, 0
/* 8049F734  98 1F 05 F8 */	stb r0, 0x5f8(r31)
lbl_8049F738:
/* 8049F738  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8049F73C  28 00 00 01 */	cmplwi r0, 1
/* 8049F740  40 82 00 18 */	bne lbl_8049F758
/* 8049F744  88 7F 09 51 */	lbz r3, 0x951(r31)
/* 8049F748  7C 04 18 00 */	cmpw r4, r3
/* 8049F74C  40 80 00 0C */	bge lbl_8049F758
/* 8049F750  38 03 FF FF */	addi r0, r3, -1
/* 8049F754  98 1F 09 51 */	stb r0, 0x951(r31)
lbl_8049F758:
/* 8049F758  7C 9C 23 78 */	mr r28, r4
/* 8049F75C  54 9D 10 3A */	slwi r29, r4, 2
/* 8049F760  1F C4 00 0C */	mulli r30, r4, 0xc
/* 8049F764  48 00 00 58 */	b lbl_8049F7BC
lbl_8049F768:
/* 8049F768  7C 7F EA 14 */	add r3, r31, r29
/* 8049F76C  80 03 06 B0 */	lwz r0, 0x6b0(r3)
/* 8049F770  90 03 06 AC */	stw r0, 0x6ac(r3)
/* 8049F774  80 03 06 C4 */	lwz r0, 0x6c4(r3)
/* 8049F778  90 03 06 C0 */	stw r0, 0x6c0(r3)
/* 8049F77C  7C 7F F2 14 */	add r3, r31, r30
/* 8049F780  C0 03 06 E8 */	lfs f0, 0x6e8(r3)
/* 8049F784  D0 03 06 DC */	stfs f0, 0x6dc(r3)
/* 8049F788  C0 03 06 EC */	lfs f0, 0x6ec(r3)
/* 8049F78C  D0 03 06 E0 */	stfs f0, 0x6e0(r3)
/* 8049F790  C0 03 06 F0 */	lfs f0, 0x6f0(r3)
/* 8049F794  D0 03 06 E4 */	stfs f0, 0x6e4(r3)
/* 8049F798  7C 7F E2 14 */	add r3, r31, r28
/* 8049F79C  88 03 07 19 */	lbz r0, 0x719(r3)
/* 8049F7A0  98 03 07 18 */	stb r0, 0x718(r3)
/* 8049F7A4  38 7F 05 98 */	addi r3, r31, 0x598
/* 8049F7A8  7F 84 E3 78 */	mr r4, r28
/* 8049F7AC  4B FF F6 3D */	bl copyNumData__19daBoomerang_sight_cFi
/* 8049F7B0  3B 9C 00 01 */	addi r28, r28, 1
/* 8049F7B4  3B DE 00 0C */	addi r30, r30, 0xc
/* 8049F7B8  3B BD 00 04 */	addi r29, r29, 4
lbl_8049F7BC:
/* 8049F7BC  88 7F 09 50 */	lbz r3, 0x950(r31)
/* 8049F7C0  38 03 FF FF */	addi r0, r3, -1
/* 8049F7C4  7C 1C 00 00 */	cmpw r28, r0
/* 8049F7C8  41 80 FF A0 */	blt lbl_8049F768
/* 8049F7CC  38 00 FF FF */	li r0, -1
/* 8049F7D0  57 83 10 3A */	slwi r3, r28, 2
/* 8049F7D4  7C 7F 1A 14 */	add r3, r31, r3
/* 8049F7D8  90 03 06 AC */	stw r0, 0x6ac(r3)
/* 8049F7DC  38 00 00 00 */	li r0, 0
/* 8049F7E0  90 03 06 C0 */	stw r0, 0x6c0(r3)
/* 8049F7E4  7C 7F E2 14 */	add r3, r31, r28
/* 8049F7E8  98 03 07 18 */	stb r0, 0x718(r3)
/* 8049F7EC  88 7F 09 50 */	lbz r3, 0x950(r31)
/* 8049F7F0  28 03 00 00 */	cmplwi r3, 0
/* 8049F7F4  41 82 00 0C */	beq lbl_8049F800
/* 8049F7F8  38 03 FF FF */	addi r0, r3, -1
/* 8049F7FC  98 1F 09 50 */	stb r0, 0x950(r31)
lbl_8049F800:
/* 8049F800  39 61 00 20 */	addi r11, r1, 0x20
/* 8049F804  4B EC 2A 21 */	bl _restgpr_28
/* 8049F808  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049F80C  7C 08 03 A6 */	mtlr r0
/* 8049F810  38 21 00 20 */	addi r1, r1, 0x20
/* 8049F814  4E 80 00 20 */	blr 
