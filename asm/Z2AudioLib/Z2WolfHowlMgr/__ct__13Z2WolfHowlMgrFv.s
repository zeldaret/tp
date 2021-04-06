lbl_802CAAC0:
/* 802CAAC0  90 6D 85 B8 */	stw r3, data_80450B38(r13)
/* 802CAAC4  38 A0 00 00 */	li r5, 0
/* 802CAAC8  90 A3 00 00 */	stw r5, 0(r3)
/* 802CAACC  90 A3 00 04 */	stw r5, 4(r3)
/* 802CAAD0  90 A3 00 08 */	stw r5, 8(r3)
/* 802CAAD4  90 A3 00 0C */	stw r5, 0xc(r3)
/* 802CAAD8  C0 02 C4 60 */	lfs f0, lit_3485(r2)
/* 802CAADC  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802CAAE0  C0 22 C4 64 */	lfs f1, lit_3486(r2)
/* 802CAAE4  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 802CAAE8  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 802CAAEC  C0 0D 83 04 */	lfs f0, cPitchCenter(r13)
/* 802CAAF0  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802CAAF4  C0 0D 83 04 */	lfs f0, cPitchCenter(r13)
/* 802CAAF8  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802CAAFC  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 802CAB00  90 A3 00 88 */	stw r5, 0x88(r3)
/* 802CAB04  98 A3 00 8C */	stb r5, 0x8c(r3)
/* 802CAB08  38 00 FF FF */	li r0, -1
/* 802CAB0C  98 03 00 8E */	stb r0, 0x8e(r3)
/* 802CAB10  B0 03 00 90 */	sth r0, 0x90(r3)
/* 802CAB14  98 A3 00 BA */	stb r5, 0xba(r3)
/* 802CAB18  98 A3 00 BB */	stb r5, 0xbb(r3)
/* 802CAB1C  98 A3 00 BC */	stb r5, 0xbc(r3)
/* 802CAB20  38 C0 00 00 */	li r6, 0
/* 802CAB24  48 00 00 14 */	b lbl_802CAB38
lbl_802CAB28:
/* 802CAB28  54 C4 0D FC */	rlwinm r4, r6, 1, 0x17, 0x1e
/* 802CAB2C  38 04 00 92 */	addi r0, r4, 0x92
/* 802CAB30  7C A3 03 2E */	sthx r5, r3, r0
/* 802CAB34  38 C6 00 01 */	addi r6, r6, 1
lbl_802CAB38:
/* 802CAB38  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 802CAB3C  28 00 00 14 */	cmplwi r0, 0x14
/* 802CAB40  41 80 FF E8 */	blt lbl_802CAB28
/* 802CAB44  38 A0 00 00 */	li r5, 0
/* 802CAB48  C0 02 C4 60 */	lfs f0, lit_3485(r2)
/* 802CAB4C  48 00 00 18 */	b lbl_802CAB64
lbl_802CAB50:
/* 802CAB50  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 802CAB54  7C 83 02 14 */	add r4, r3, r0
/* 802CAB58  D0 04 00 38 */	stfs f0, 0x38(r4)
/* 802CAB5C  D0 04 00 60 */	stfs f0, 0x60(r4)
/* 802CAB60  38 A5 00 01 */	addi r5, r5, 1
lbl_802CAB64:
/* 802CAB64  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802CAB68  28 00 00 0A */	cmplwi r0, 0xa
/* 802CAB6C  41 80 FF E4 */	blt lbl_802CAB50
/* 802CAB70  C0 02 C4 60 */	lfs f0, lit_3485(r2)
/* 802CAB74  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 802CAB78  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 802CAB7C  3C 80 80 3D */	lis r4, sGuideData@ha /* 0x803CBCC0@ha */
/* 802CAB80  38 04 BC C0 */	addi r0, r4, sGuideData@l /* 0x803CBCC0@l */
/* 802CAB84  90 03 00 10 */	stw r0, 0x10(r3)
/* 802CAB88  4E 80 00 20 */	blr 
