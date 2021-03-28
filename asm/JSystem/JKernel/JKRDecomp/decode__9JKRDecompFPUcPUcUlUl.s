lbl_802DB9DC:
/* 802DB9DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DB9E0  7C 08 02 A6 */	mflr r0
/* 802DB9E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DB9E8  39 61 00 20 */	addi r11, r1, 0x20
/* 802DB9EC  48 08 67 ED */	bl _savegpr_28
/* 802DB9F0  7C 7C 1B 78 */	mr r28, r3
/* 802DB9F4  7C 9D 23 78 */	mr r29, r4
/* 802DB9F8  7C BE 2B 78 */	mr r30, r5
/* 802DB9FC  7C DF 33 78 */	mr r31, r6
/* 802DBA00  48 00 02 F9 */	bl checkCompressed__9JKRDecompFPUc
/* 802DBA04  2C 03 00 01 */	cmpwi r3, 1
/* 802DBA08  40 82 00 1C */	bne lbl_802DBA24
/* 802DBA0C  7F 83 E3 78 */	mr r3, r28
/* 802DBA10  7F A4 EB 78 */	mr r4, r29
/* 802DBA14  7F C5 F3 78 */	mr r5, r30
/* 802DBA18  7F E6 FB 78 */	mr r6, r31
/* 802DBA1C  48 00 00 3D */	bl decodeSZP__9JKRDecompFPUcPUcUlUl
/* 802DBA20  48 00 00 20 */	b lbl_802DBA40
lbl_802DBA24:
/* 802DBA24  2C 03 00 02 */	cmpwi r3, 2
/* 802DBA28  40 82 00 18 */	bne lbl_802DBA40
/* 802DBA2C  7F 83 E3 78 */	mr r3, r28
/* 802DBA30  7F A4 EB 78 */	mr r4, r29
/* 802DBA34  7F C5 F3 78 */	mr r5, r30
/* 802DBA38  7F E6 FB 78 */	mr r6, r31
/* 802DBA3C  48 00 01 D9 */	bl decodeSZS__9JKRDecompFPUcPUcUlUl
lbl_802DBA40:
/* 802DBA40  39 61 00 20 */	addi r11, r1, 0x20
/* 802DBA44  48 08 67 E1 */	bl _restgpr_28
/* 802DBA48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DBA4C  7C 08 03 A6 */	mtlr r0
/* 802DBA50  38 21 00 20 */	addi r1, r1, 0x20
/* 802DBA54  4E 80 00 20 */	blr 
