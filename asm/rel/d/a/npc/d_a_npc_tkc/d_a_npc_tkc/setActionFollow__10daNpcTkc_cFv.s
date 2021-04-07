lbl_80B0D37C:
/* 80B0D37C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B0D380  7C 08 02 A6 */	mflr r0
/* 80B0D384  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B0D388  3C 80 80 B1 */	lis r4, lit_4447@ha /* 0x80B10B20@ha */
/* 80B0D38C  38 A4 0B 20 */	addi r5, r4, lit_4447@l /* 0x80B10B20@l */
/* 80B0D390  80 85 00 00 */	lwz r4, 0(r5)
/* 80B0D394  80 05 00 04 */	lwz r0, 4(r5)
/* 80B0D398  90 81 00 08 */	stw r4, 8(r1)
/* 80B0D39C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B0D3A0  80 05 00 08 */	lwz r0, 8(r5)
/* 80B0D3A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B0D3A8  38 81 00 08 */	addi r4, r1, 8
/* 80B0D3AC  48 00 08 1D */	bl setAction__10daNpcTkc_cFM10daNpcTkc_cFPCvPv_v
/* 80B0D3B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B0D3B4  7C 08 03 A6 */	mtlr r0
/* 80B0D3B8  38 21 00 20 */	addi r1, r1, 0x20
/* 80B0D3BC  4E 80 00 20 */	blr 
