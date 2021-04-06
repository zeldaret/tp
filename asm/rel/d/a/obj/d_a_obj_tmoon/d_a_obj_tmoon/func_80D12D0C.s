lbl_80D12D0C:
/* 80D12D0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D12D10  7C 08 02 A6 */	mflr r0
/* 80D12D14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D12D18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D12D1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D12D20  7C 7E 1B 78 */	mr r30, r3
/* 80D12D24  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D12D28  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D12D2C  40 82 00 1C */	bne lbl_80D12D48
/* 80D12D30  28 1E 00 00 */	cmplwi r30, 0
/* 80D12D34  41 82 00 08 */	beq lbl_80D12D3C
/* 80D12D38  4B 30 5E 2D */	bl __ct__10fopAc_ac_cFv
lbl_80D12D3C:
/* 80D12D3C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80D12D40  60 00 00 08 */	ori r0, r0, 8
/* 80D12D44  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80D12D48:
/* 80D12D48  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D12D4C  3C 80 80 D1 */	lis r4, l_arcName@ha /* 0x80D12FA0@ha */
/* 80D12D50  38 84 2F A0 */	addi r4, r4, l_arcName@l /* 0x80D12FA0@l */
/* 80D12D54  80 84 00 00 */	lwz r4, 0(r4)
/* 80D12D58  4B 31 A1 65 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D12D5C  7C 7F 1B 78 */	mr r31, r3
/* 80D12D60  2C 1F 00 04 */	cmpwi r31, 4
/* 80D12D64  40 82 00 40 */	bne lbl_80D12DA4
/* 80D12D68  7F C3 F3 78 */	mr r3, r30
/* 80D12D6C  3C 80 80 D1 */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha /* 0x80D12B98@ha */
/* 80D12D70  38 84 2B 98 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l /* 0x80D12B98@l */
/* 80D12D74  38 A0 08 80 */	li r5, 0x880
/* 80D12D78  4B 30 77 39 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D12D7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D12D80  40 82 00 0C */	bne lbl_80D12D8C
/* 80D12D84  38 60 00 05 */	li r3, 5
/* 80D12D88  48 00 00 20 */	b lbl_80D12DA8
lbl_80D12D8C:
/* 80D12D8C  7F C3 F3 78 */	mr r3, r30
/* 80D12D90  4B FF FE B9 */	bl Create__12daObjTMoon_cFv
/* 80D12D94  2C 03 00 00 */	cmpwi r3, 0
/* 80D12D98  40 82 00 0C */	bne lbl_80D12DA4
/* 80D12D9C  38 60 00 05 */	li r3, 5
/* 80D12DA0  48 00 00 08 */	b lbl_80D12DA8
lbl_80D12DA4:
/* 80D12DA4  7F E3 FB 78 */	mr r3, r31
lbl_80D12DA8:
/* 80D12DA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D12DAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D12DB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D12DB4  7C 08 03 A6 */	mtlr r0
/* 80D12DB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D12DBC  4E 80 00 20 */	blr 
