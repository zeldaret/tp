lbl_80AF23F0:
/* 80AF23F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF23F4  7C 08 02 A6 */	mflr r0
/* 80AF23F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF23FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF2400  93 C1 00 08 */	stw r30, 8(r1)
/* 80AF2404  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AF2408  7C 9F 23 78 */	mr r31, r4
/* 80AF240C  41 82 00 38 */	beq lbl_80AF2444
/* 80AF2410  3C 60 80 AF */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80AF2A9C@ha */
/* 80AF2414  38 03 2A 9C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80AF2A9C@l */
/* 80AF2418  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80AF241C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AF2420  38 80 FF FF */	li r4, -1
/* 80AF2424  4B 77 CA F5 */	bl __dt__8cM3dGCirFv
/* 80AF2428  7F C3 F3 78 */	mr r3, r30
/* 80AF242C  38 80 00 00 */	li r4, 0
/* 80AF2430  4B 77 5C 81 */	bl __dt__13cBgS_PolyInfoFv
/* 80AF2434  7F E0 07 35 */	extsh. r0, r31
/* 80AF2438  40 81 00 0C */	ble lbl_80AF2444
/* 80AF243C  7F C3 F3 78 */	mr r3, r30
/* 80AF2440  4B 7D C8 FD */	bl __dl__FPv
lbl_80AF2444:
/* 80AF2444  7F C3 F3 78 */	mr r3, r30
/* 80AF2448  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF244C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AF2450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF2454  7C 08 03 A6 */	mtlr r0
/* 80AF2458  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF245C  4E 80 00 20 */	blr 
