lbl_807963EC:
/* 807963EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807963F0  7C 08 02 A6 */	mflr r0
/* 807963F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 807963F8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807963FC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80796400  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80796404  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 80796408  7C 00 07 74 */	extsb r0, r0
/* 8079640C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80796410  7C 84 02 14 */	add r4, r4, r0
/* 80796414  83 E4 5D 74 */	lwz r31, 0x5d74(r4)
/* 80796418  C0 03 09 D4 */	lfs f0, 0x9d4(r3)
/* 8079641C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80796420  C0 03 09 D8 */	lfs f0, 0x9d8(r3)
/* 80796424  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80796428  C0 03 09 DC */	lfs f0, 0x9dc(r3)
/* 8079642C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80796430  C0 03 09 EC */	lfs f0, 0x9ec(r3)
/* 80796434  D0 01 00 08 */	stfs f0, 8(r1)
/* 80796438  C0 03 09 F0 */	lfs f0, 0x9f0(r3)
/* 8079643C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80796440  C0 03 09 F4 */	lfs f0, 0x9f4(r3)
/* 80796444  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80796448  38 7F 02 48 */	addi r3, r31, 0x248
/* 8079644C  38 81 00 14 */	addi r4, r1, 0x14
/* 80796450  38 A1 00 08 */	addi r5, r1, 8
/* 80796454  4B 9E A7 C4 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 80796458  38 7F 02 48 */	addi r3, r31, 0x248
/* 8079645C  4B 9C B0 50 */	b Start__9dCamera_cFv
/* 80796460  38 7F 02 48 */	addi r3, r31, 0x248
/* 80796464  38 80 00 00 */	li r4, 0
/* 80796468  4B 9C CB A4 */	b SetTrimSize__9dCamera_cFl
/* 8079646C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80796470  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80796474  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80796478  4B 8A BF F0 */	b reset__14dEvt_control_cFv
/* 8079647C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80796480  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80796484  7C 08 03 A6 */	mtlr r0
/* 80796488  38 21 00 30 */	addi r1, r1, 0x30
/* 8079648C  4E 80 00 20 */	blr 
