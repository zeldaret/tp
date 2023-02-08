lbl_80AFE574:
/* 80AFE574  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80AFE578  7C 08 02 A6 */	mflr r0
/* 80AFE57C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80AFE580  3C 80 80 B0 */	lis r4, m__17daNpcTheB_Param_c@ha /* 0x80B00D6C@ha */
/* 80AFE584  38 84 0D 6C */	addi r4, r4, m__17daNpcTheB_Param_c@l /* 0x80B00D6C@l */
/* 80AFE588  80 A4 00 F0 */	lwz r5, 0xf0(r4)
/* 80AFE58C  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80AFE590  90 A1 00 6C */	stw r5, 0x6c(r1)
/* 80AFE594  90 01 00 70 */	stw r0, 0x70(r1)
/* 80AFE598  80 04 00 F8 */	lwz r0, 0xf8(r4)
/* 80AFE59C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80AFE5A0  38 A4 00 00 */	addi r5, r4, 0
/* 80AFE5A4  C0 05 00 44 */	lfs f0, 0x44(r5)
/* 80AFE5A8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80AFE5AC  80 04 00 FC */	lwz r0, 0xfc(r4)
/* 80AFE5B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AFE5B4  38 01 00 6C */	addi r0, r1, 0x6c
/* 80AFE5B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AFE5BC  80 A4 01 00 */	lwz r5, 0x100(r4)
/* 80AFE5C0  80 04 01 04 */	lwz r0, 0x104(r4)
/* 80AFE5C4  90 A1 00 60 */	stw r5, 0x60(r1)
/* 80AFE5C8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80AFE5CC  80 04 01 08 */	lwz r0, 0x108(r4)
/* 80AFE5D0  90 01 00 68 */	stw r0, 0x68(r1)
/* 80AFE5D4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80AFE5D8  80 A4 01 0C */	lwz r5, 0x10c(r4)
/* 80AFE5DC  80 04 01 10 */	lwz r0, 0x110(r4)
/* 80AFE5E0  90 A1 00 54 */	stw r5, 0x54(r1)
/* 80AFE5E4  90 01 00 58 */	stw r0, 0x58(r1)
/* 80AFE5E8  80 04 01 14 */	lwz r0, 0x114(r4)
/* 80AFE5EC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80AFE5F0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80AFE5F4  80 A4 01 18 */	lwz r5, 0x118(r4)
/* 80AFE5F8  80 04 01 1C */	lwz r0, 0x11c(r4)
/* 80AFE5FC  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80AFE600  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AFE604  38 01 00 60 */	addi r0, r1, 0x60
/* 80AFE608  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AFE60C  38 01 00 54 */	addi r0, r1, 0x54
/* 80AFE610  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AFE614  80 A4 01 20 */	lwz r5, 0x120(r4)
/* 80AFE618  80 04 01 24 */	lwz r0, 0x124(r4)
/* 80AFE61C  90 A1 00 48 */	stw r5, 0x48(r1)
/* 80AFE620  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80AFE624  80 04 01 28 */	lwz r0, 0x128(r4)
/* 80AFE628  90 01 00 50 */	stw r0, 0x50(r1)
/* 80AFE62C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80AFE630  80 A4 01 2C */	lwz r5, 0x12c(r4)
/* 80AFE634  80 04 01 30 */	lwz r0, 0x130(r4)
/* 80AFE638  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 80AFE63C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80AFE640  80 04 01 34 */	lwz r0, 0x134(r4)
/* 80AFE644  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AFE648  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80AFE64C  80 A4 01 38 */	lwz r5, 0x138(r4)
/* 80AFE650  80 04 01 3C */	lwz r0, 0x13c(r4)
/* 80AFE654  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80AFE658  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFE65C  38 01 00 48 */	addi r0, r1, 0x48
/* 80AFE660  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AFE664  38 01 00 3C */	addi r0, r1, 0x3c
/* 80AFE668  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFE66C  80 A4 01 40 */	lwz r5, 0x140(r4)
/* 80AFE670  80 04 01 44 */	lwz r0, 0x144(r4)
/* 80AFE674  90 A1 00 30 */	stw r5, 0x30(r1)
/* 80AFE678  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AFE67C  80 04 01 48 */	lwz r0, 0x148(r4)
/* 80AFE680  90 01 00 38 */	stw r0, 0x38(r1)
/* 80AFE684  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80AFE688  80 04 01 4C */	lwz r0, 0x14c(r4)
/* 80AFE68C  90 01 00 08 */	stw r0, 8(r1)
/* 80AFE690  38 01 00 30 */	addi r0, r1, 0x30
/* 80AFE694  90 01 00 08 */	stw r0, 8(r1)
/* 80AFE698  80 A4 01 50 */	lwz r5, 0x150(r4)
/* 80AFE69C  80 04 01 54 */	lwz r0, 0x154(r4)
/* 80AFE6A0  90 A1 00 20 */	stw r5, 0x20(r1)
/* 80AFE6A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AFE6A8  80 A4 01 58 */	lwz r5, 0x158(r4)
/* 80AFE6AC  80 04 01 5C */	lwz r0, 0x15c(r4)
/* 80AFE6B0  90 A1 00 28 */	stw r5, 0x28(r1)
/* 80AFE6B4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80AFE6B8  38 01 00 0C */	addi r0, r1, 0xc
/* 80AFE6BC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AFE6C0  38 01 00 18 */	addi r0, r1, 0x18
/* 80AFE6C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AFE6C8  38 01 00 10 */	addi r0, r1, 0x10
/* 80AFE6CC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80AFE6D0  38 01 00 08 */	addi r0, r1, 8
/* 80AFE6D4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80AFE6D8  A8 83 09 DE */	lha r4, 0x9de(r3)
/* 80AFE6DC  7C 80 07 35 */	extsh. r0, r4
/* 80AFE6E0  41 80 00 14 */	blt lbl_80AFE6F4
/* 80AFE6E4  2C 04 00 04 */	cmpwi r4, 4
/* 80AFE6E8  40 80 00 0C */	bge lbl_80AFE6F4
/* 80AFE6EC  38 81 00 20 */	addi r4, r1, 0x20
/* 80AFE6F0  4B 65 4A 61 */	bl playExpressionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData
lbl_80AFE6F4:
/* 80AFE6F4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80AFE6F8  7C 08 03 A6 */	mtlr r0
/* 80AFE6FC  38 21 00 80 */	addi r1, r1, 0x80
/* 80AFE700  4E 80 00 20 */	blr 
