lbl_802A47AC:
/* 802A47AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A47B0  7C 08 02 A6 */	mflr r0
/* 802A47B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A47B8  39 61 00 20 */	addi r11, r1, 0x20
/* 802A47BC  48 0B DA 21 */	bl _savegpr_29
/* 802A47C0  7C 7D 1B 78 */	mr r29, r3
/* 802A47C4  7C 9E 23 78 */	mr r30, r4
/* 802A47C8  7C DF 33 78 */	mr r31, r6
/* 802A47CC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802A47D0  48 00 10 85 */	bl newWaveBank__10JAUSectionFUlPCv
/* 802A47D4  28 1F 00 00 */	cmplwi r31, 0
/* 802A47D8  41 82 00 14 */	beq lbl_802A47EC
/* 802A47DC  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802A47E0  7F C4 F3 78 */	mr r4, r30
/* 802A47E4  7F E5 FB 78 */	mr r5, r31
/* 802A47E8  48 00 11 61 */	bl loadWaveArc__10JAUSectionFUlUl
lbl_802A47EC:
/* 802A47EC  39 61 00 20 */	addi r11, r1, 0x20
/* 802A47F0  48 0B DA 39 */	bl _restgpr_29
/* 802A47F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A47F8  7C 08 03 A6 */	mtlr r0
/* 802A47FC  38 21 00 20 */	addi r1, r1, 0x20
/* 802A4800  4E 80 00 20 */	blr 
