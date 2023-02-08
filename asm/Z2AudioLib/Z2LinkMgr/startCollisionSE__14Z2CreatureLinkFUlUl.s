lbl_802C4784:
/* 802C4784  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C4788  7C 08 02 A6 */	mflr r0
/* 802C478C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C4790  39 61 00 20 */	addi r11, r1, 0x20
/* 802C4794  48 09 DA 49 */	bl _savegpr_29
/* 802C4798  7C 7D 1B 78 */	mr r29, r3
/* 802C479C  7C 9E 23 78 */	mr r30, r4
/* 802C47A0  7C BF 2B 78 */	mr r31, r5
/* 802C47A4  2C 1F 00 28 */	cmpwi r31, 0x28
/* 802C47A8  40 80 00 10 */	bge lbl_802C47B8
/* 802C47AC  2C 1F 00 20 */	cmpwi r31, 0x20
/* 802C47B0  41 82 00 20 */	beq lbl_802C47D0
/* 802C47B4  48 00 00 34 */	b lbl_802C47E8
lbl_802C47B8:
/* 802C47B8  2C 1F 00 2B */	cmpwi r31, 0x2b
/* 802C47BC  40 80 00 2C */	bge lbl_802C47E8
/* 802C47C0  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802C47C4  38 80 00 02 */	li r4, 2
/* 802C47C8  4B FF 00 7D */	bl setBattleSeqState__8Z2SeqMgrFUc
/* 802C47CC  48 00 00 1C */	b lbl_802C47E8
lbl_802C47D0:
/* 802C47D0  3C 1E FF FC */	addis r0, r30, 0xfffc
/* 802C47D4  28 00 00 01 */	cmplwi r0, 1
/* 802C47D8  40 82 00 10 */	bne lbl_802C47E8
/* 802C47DC  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802C47E0  38 80 00 14 */	li r4, 0x14
/* 802C47E4  4B FF 03 19 */	bl setBattleLastHit__8Z2SeqMgrFUc
lbl_802C47E8:
/* 802C47E8  38 7D 00 08 */	addi r3, r29, 8
/* 802C47EC  7F C4 F3 78 */	mr r4, r30
/* 802C47F0  7F E5 FB 78 */	mr r5, r31
/* 802C47F4  38 C0 00 00 */	li r6, 0
/* 802C47F8  4B FF 9C AD */	bl startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
/* 802C47FC  39 61 00 20 */	addi r11, r1, 0x20
/* 802C4800  48 09 DA 29 */	bl _restgpr_29
/* 802C4804  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C4808  7C 08 03 A6 */	mtlr r0
/* 802C480C  38 21 00 20 */	addi r1, r1, 0x20
/* 802C4810  4E 80 00 20 */	blr 
