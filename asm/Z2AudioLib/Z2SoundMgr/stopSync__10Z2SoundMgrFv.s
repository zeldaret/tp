lbl_802AA84C:
/* 802AA84C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AA850  7C 08 02 A6 */	mflr r0
/* 802AA854  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AA858  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AA85C  7C 7F 1B 78 */	mr r31, r3
/* 802AA860  48 00 00 69 */	bl stop__10Z2SoundMgrFv
/* 802AA864  48 00 00 34 */	b lbl_802AA898
lbl_802AA868:
/* 802AA868  7F E3 FB 78 */	mr r3, r31
/* 802AA86C  4B FF F9 45 */	bl calc__10Z2SoundMgrFv
/* 802AA870  38 7F 00 04 */	addi r3, r31, 4
/* 802AA874  4B FF 60 5D */	bl getNumActiveSe__8JAISeMgrCFv
/* 802AA878  2C 03 00 00 */	cmpwi r3, 0
/* 802AA87C  40 82 00 10 */	bne lbl_802AA88C
/* 802AA880  80 1F 07 94 */	lwz r0, 0x794(r31)
/* 802AA884  2C 00 00 00 */	cmpwi r0, 0
/* 802AA888  41 82 00 2C */	beq lbl_802AA8B4
lbl_802AA88C:
/* 802AA88C  7F E3 FB 78 */	mr r3, r31
/* 802AA890  4B FF FC 99 */	bl mixOut__10Z2SoundMgrFv
/* 802AA894  4B FF 38 F5 */	bl waitSubFrame__9JASDriverFv
lbl_802AA898:
/* 802AA898  38 7F 00 04 */	addi r3, r31, 4
/* 802AA89C  4B FF 60 35 */	bl getNumActiveSe__8JAISeMgrCFv
/* 802AA8A0  2C 03 00 00 */	cmpwi r3, 0
/* 802AA8A4  41 81 FF C4 */	bgt lbl_802AA868
/* 802AA8A8  80 1F 07 94 */	lwz r0, 0x794(r31)
/* 802AA8AC  2C 00 00 00 */	cmpwi r0, 0
/* 802AA8B0  41 81 FF B8 */	bgt lbl_802AA868
lbl_802AA8B4:
/* 802AA8B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AA8B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AA8BC  7C 08 03 A6 */	mtlr r0
/* 802AA8C0  38 21 00 10 */	addi r1, r1, 0x10
/* 802AA8C4  4E 80 00 20 */	blr 
