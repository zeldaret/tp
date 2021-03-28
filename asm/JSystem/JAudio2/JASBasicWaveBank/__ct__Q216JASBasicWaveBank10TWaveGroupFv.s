lbl_802989C0:
/* 802989C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802989C4  7C 08 02 A6 */	mflr r0
/* 802989C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802989CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802989D0  7C 7F 1B 78 */	mr r31, r3
/* 802989D4  48 00 17 69 */	bl __ct__10JASWaveArcFv
/* 802989D8  3C 60 80 3C */	lis r3, __vt__Q216JASBasicWaveBank10TWaveGroup@ha
/* 802989DC  38 03 77 3C */	addi r0, r3, __vt__Q216JASBasicWaveBank10TWaveGroup@l
/* 802989E0  90 1F 00 00 */	stw r0, 0(r31)
/* 802989E4  38 00 00 00 */	li r0, 0
/* 802989E8  90 1F 00 74 */	stw r0, 0x74(r31)
/* 802989EC  90 1F 00 78 */	stw r0, 0x78(r31)
/* 802989F0  B0 1F 00 7C */	sth r0, 0x7c(r31)
/* 802989F4  7F E3 FB 78 */	mr r3, r31
/* 802989F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802989FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298A00  7C 08 03 A6 */	mtlr r0
/* 80298A04  38 21 00 10 */	addi r1, r1, 0x10
/* 80298A08  4E 80 00 20 */	blr 
