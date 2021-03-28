lbl_80AF43E4:
/* 80AF43E4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80AF43E8  7C 08 02 A6 */	mflr r0
/* 80AF43EC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80AF43F0  3C 80 80 AF */	lis r4, m__22daNpc_SoldierB_Param_c@ha
/* 80AF43F4  38 A4 5A D4 */	addi r5, r4, m__22daNpc_SoldierB_Param_c@l
/* 80AF43F8  80 85 00 B8 */	lwz r4, 0xb8(r5)
/* 80AF43FC  80 05 00 BC */	lwz r0, 0xbc(r5)
/* 80AF4400  90 81 00 48 */	stw r4, 0x48(r1)
/* 80AF4404  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80AF4408  80 05 00 C0 */	lwz r0, 0xc0(r5)
/* 80AF440C  90 01 00 50 */	stw r0, 0x50(r1)
/* 80AF4410  38 85 00 00 */	addi r4, r5, 0
/* 80AF4414  C0 04 00 44 */	lfs f0, 0x44(r4)
/* 80AF4418  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80AF441C  80 05 00 C4 */	lwz r0, 0xc4(r5)
/* 80AF4420  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AF4424  38 01 00 48 */	addi r0, r1, 0x48
/* 80AF4428  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AF442C  80 85 00 C8 */	lwz r4, 0xc8(r5)
/* 80AF4430  80 05 00 CC */	lwz r0, 0xcc(r5)
/* 80AF4434  90 81 00 3C */	stw r4, 0x3c(r1)
/* 80AF4438  90 01 00 40 */	stw r0, 0x40(r1)
/* 80AF443C  80 05 00 D0 */	lwz r0, 0xd0(r5)
/* 80AF4440  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AF4444  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80AF4448  80 85 00 D4 */	lwz r4, 0xd4(r5)
/* 80AF444C  80 05 00 D8 */	lwz r0, 0xd8(r5)
/* 80AF4450  90 81 00 30 */	stw r4, 0x30(r1)
/* 80AF4454  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AF4458  80 05 00 DC */	lwz r0, 0xdc(r5)
/* 80AF445C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80AF4460  80 85 00 E0 */	lwz r4, 0xe0(r5)
/* 80AF4464  80 05 00 E4 */	lwz r0, 0xe4(r5)
/* 80AF4468  90 81 00 10 */	stw r4, 0x10(r1)
/* 80AF446C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF4470  38 01 00 3C */	addi r0, r1, 0x3c
/* 80AF4474  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AF4478  38 01 00 30 */	addi r0, r1, 0x30
/* 80AF447C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF4480  80 85 00 E8 */	lwz r4, 0xe8(r5)
/* 80AF4484  80 05 00 EC */	lwz r0, 0xec(r5)
/* 80AF4488  90 81 00 24 */	stw r4, 0x24(r1)
/* 80AF448C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80AF4490  80 05 00 F0 */	lwz r0, 0xf0(r5)
/* 80AF4494  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80AF4498  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AF449C  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80AF44A0  90 01 00 08 */	stw r0, 8(r1)
/* 80AF44A4  38 01 00 24 */	addi r0, r1, 0x24
/* 80AF44A8  90 01 00 08 */	stw r0, 8(r1)
/* 80AF44AC  80 85 00 F8 */	lwz r4, 0xf8(r5)
/* 80AF44B0  80 05 00 FC */	lwz r0, 0xfc(r5)
/* 80AF44B4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80AF44B8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AF44BC  80 05 01 00 */	lwz r0, 0x100(r5)
/* 80AF44C0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AF44C4  38 01 00 0C */	addi r0, r1, 0xc
/* 80AF44C8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AF44CC  38 01 00 10 */	addi r0, r1, 0x10
/* 80AF44D0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AF44D4  38 01 00 08 */	addi r0, r1, 8
/* 80AF44D8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AF44DC  A8 83 09 E0 */	lha r4, 0x9e0(r3)
/* 80AF44E0  7C 80 07 35 */	extsh. r0, r4
/* 80AF44E4  41 80 00 14 */	blt lbl_80AF44F8
/* 80AF44E8  2C 04 00 03 */	cmpwi r4, 3
/* 80AF44EC  40 80 00 0C */	bge lbl_80AF44F8
/* 80AF44F0  38 81 00 18 */	addi r4, r1, 0x18
/* 80AF44F4  4B 65 ED 70 */	b playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData
lbl_80AF44F8:
/* 80AF44F8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80AF44FC  7C 08 03 A6 */	mtlr r0
/* 80AF4500  38 21 00 60 */	addi r1, r1, 0x60
/* 80AF4504  4E 80 00 20 */	blr 
