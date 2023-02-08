lbl_80D18E14:
/* 80D18E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D18E18  7C 08 02 A6 */	mflr r0
/* 80D18E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D18E20  3C 60 80 D2 */	lis r3, l_HIO@ha /* 0x80D190B4@ha */
/* 80D18E24  38 63 90 B4 */	addi r3, r3, l_HIO@l /* 0x80D190B4@l */
/* 80D18E28  4B FF ED 45 */	bl __ct__16daTogeTrap_HIO_cFv
/* 80D18E2C  3C 80 80 D2 */	lis r4, __dt__16daTogeTrap_HIO_cFv@ha /* 0x80D18DA8@ha */
/* 80D18E30  38 84 8D A8 */	addi r4, r4, __dt__16daTogeTrap_HIO_cFv@l /* 0x80D18DA8@l */
/* 80D18E34  3C A0 80 D2 */	lis r5, lit_3647@ha /* 0x80D190A8@ha */
/* 80D18E38  38 A5 90 A8 */	addi r5, r5, lit_3647@l /* 0x80D190A8@l */
/* 80D18E3C  4B FF EC BD */	bl __register_global_object
/* 80D18E40  3C 60 80 D2 */	lis r3, mCcDCyl__12daTogeTrap_c@ha /* 0x80D18F30@ha */
/* 80D18E44  38 63 8F 30 */	addi r3, r3, mCcDCyl__12daTogeTrap_c@l /* 0x80D18F30@l */
/* 80D18E48  38 A3 FF FC */	addi r5, r3, -4
/* 80D18E4C  3C 60 80 D2 */	lis r3, mCcDObjInfo__12daTogeTrap_c@ha /* 0x80D18EAC@ha */
/* 80D18E50  38 63 8E AC */	addi r3, r3, mCcDObjInfo__12daTogeTrap_c@l /* 0x80D18EAC@l */
/* 80D18E54  38 83 FF FC */	addi r4, r3, -4
/* 80D18E58  38 00 00 06 */	li r0, 6
/* 80D18E5C  7C 09 03 A6 */	mtctr r0
lbl_80D18E60:
/* 80D18E60  80 64 00 04 */	lwz r3, 4(r4)
/* 80D18E64  84 04 00 08 */	lwzu r0, 8(r4)
/* 80D18E68  90 65 00 04 */	stw r3, 4(r5)
/* 80D18E6C  94 05 00 08 */	stwu r0, 8(r5)
/* 80D18E70  42 00 FF F0 */	bdnz lbl_80D18E60
/* 80D18E74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D18E78  7C 08 03 A6 */	mtlr r0
/* 80D18E7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D18E80  4E 80 00 20 */	blr 
