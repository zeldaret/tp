lbl_8024F994:
/* 8024F994  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8024F998  7C 08 02 A6 */	mflr r0
/* 8024F99C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8024F9A0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8024F9A4  7C 7F 1B 78 */	mr r31, r3
/* 8024F9A8  88 03 02 A5 */	lbz r0, 0x2a5(r3)
/* 8024F9AC  98 03 03 18 */	stb r0, 0x318(r3)
/* 8024F9B0  88 03 02 A7 */	lbz r0, 0x2a7(r3)
/* 8024F9B4  98 03 03 19 */	stb r0, 0x319(r3)
/* 8024F9B8  38 00 00 01 */	li r0, 1
/* 8024F9BC  98 03 03 1A */	stb r0, 0x31a(r3)
/* 8024F9C0  3C 60 80 43 */	lis r3, g_nmHIO@ha /* 0x80430734@ha */
/* 8024F9C4  38 63 07 34 */	addi r3, r3, g_nmHIO@l /* 0x80430734@l */
/* 8024F9C8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8024F9CC  88 7F 02 A7 */	lbz r3, 0x2a7(r31)
/* 8024F9D0  88 1F 02 A5 */	lbz r0, 0x2a5(r31)
/* 8024F9D4  1C 00 00 05 */	mulli r0, r0, 5
/* 8024F9D8  7C 03 02 14 */	add r0, r3, r0
/* 8024F9DC  54 00 10 3A */	slwi r0, r0, 2
/* 8024F9E0  7C 7F 02 14 */	add r3, r31, r0
/* 8024F9E4  80 63 00 74 */	lwz r3, 0x74(r3)
/* 8024F9E8  80 63 00 04 */	lwz r3, 4(r3)
/* 8024F9EC  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8024F9F0  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8024F9F4  81 83 00 00 */	lwz r12, 0(r3)
/* 8024F9F8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8024F9FC  7D 89 03 A6 */	mtctr r12
/* 8024FA00  4E 80 04 21 */	bctrl 
/* 8024FA04  38 00 00 C8 */	li r0, 0xc8
/* 8024FA08  98 01 00 08 */	stb r0, 8(r1)
/* 8024FA0C  98 01 00 09 */	stb r0, 9(r1)
/* 8024FA10  98 01 00 0A */	stb r0, 0xa(r1)
/* 8024FA14  38 00 00 FF */	li r0, 0xff
/* 8024FA18  98 01 00 0B */	stb r0, 0xb(r1)
/* 8024FA1C  80 01 00 08 */	lwz r0, 8(r1)
/* 8024FA20  90 01 00 0C */	stw r0, 0xc(r1)
/* 8024FA24  88 7F 02 A7 */	lbz r3, 0x2a7(r31)
/* 8024FA28  88 1F 02 A5 */	lbz r0, 0x2a5(r31)
/* 8024FA2C  1C 00 00 05 */	mulli r0, r0, 5
/* 8024FA30  7C 03 02 14 */	add r0, r3, r0
/* 8024FA34  54 00 10 3A */	slwi r0, r0, 2
/* 8024FA38  7C 7F 02 14 */	add r3, r31, r0
/* 8024FA3C  80 63 00 74 */	lwz r3, 0x74(r3)
/* 8024FA40  80 63 00 04 */	lwz r3, 4(r3)
/* 8024FA44  38 81 00 0C */	addi r4, r1, 0xc
/* 8024FA48  81 83 00 00 */	lwz r12, 0(r3)
/* 8024FA4C  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 8024FA50  7D 89 03 A6 */	mtctr r12
/* 8024FA54  4E 80 04 21 */	bctrl 
/* 8024FA58  88 7F 02 A7 */	lbz r3, 0x2a7(r31)
/* 8024FA5C  88 1F 02 A5 */	lbz r0, 0x2a5(r31)
/* 8024FA60  1C 00 00 05 */	mulli r0, r0, 5
/* 8024FA64  7C 03 02 14 */	add r0, r3, r0
/* 8024FA68  54 00 10 3A */	slwi r0, r0, 2
/* 8024FA6C  7C 7F 02 14 */	add r3, r31, r0
/* 8024FA70  80 83 00 74 */	lwz r4, 0x74(r3)
/* 8024FA74  38 61 00 10 */	addi r3, r1, 0x10
/* 8024FA78  80 A4 00 04 */	lwz r5, 4(r4)
/* 8024FA7C  38 C0 00 00 */	li r6, 0
/* 8024FA80  38 E0 00 00 */	li r7, 0
/* 8024FA84  48 00 54 39 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 8024FA88  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8024FA8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024FA90  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8024FA94  90 01 00 20 */	stw r0, 0x20(r1)
/* 8024FA98  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8024FA9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024FAA0  88 7F 02 A7 */	lbz r3, 0x2a7(r31)
/* 8024FAA4  88 1F 02 A5 */	lbz r0, 0x2a5(r31)
/* 8024FAA8  1C 00 00 05 */	mulli r0, r0, 5
/* 8024FAAC  7C 03 02 14 */	add r0, r3, r0
/* 8024FAB0  54 00 10 3A */	slwi r0, r0, 2
/* 8024FAB4  7C 7F 02 14 */	add r3, r31, r0
/* 8024FAB8  80 63 00 74 */	lwz r3, 0x74(r3)
/* 8024FABC  80 83 00 04 */	lwz r4, 4(r3)
/* 8024FAC0  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8024FAC4  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8024FAC8  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8024FACC  38 A0 00 01 */	li r5, 1
/* 8024FAD0  4B F4 56 25 */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 8024FAD4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8024FAD8  C0 22 B3 C0 */	lfs f1, lit_3820(r2)
/* 8024FADC  4B F4 57 C5 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 8024FAE0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8024FAE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8024FAE8  7C 08 03 A6 */	mtlr r0
/* 8024FAEC  38 21 00 30 */	addi r1, r1, 0x30
/* 8024FAF0  4E 80 00 20 */	blr 
