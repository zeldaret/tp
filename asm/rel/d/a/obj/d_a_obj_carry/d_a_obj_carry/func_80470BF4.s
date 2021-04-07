lbl_80470BF4:
/* 80470BF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80470BF8  7C 08 02 A6 */	mflr r0
/* 80470BFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80470C00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80470C04  93 C1 00 08 */	stw r30, 8(r1)
/* 80470C08  7C 7E 1B 78 */	mr r30, r3
/* 80470C0C  4B FF EE C1 */	bl preInit__12daObjCarry_cFv
/* 80470C10  38 60 00 02 */	li r3, 2
/* 80470C14  88 1E 0C F0 */	lbz r0, 0xcf0(r30)
/* 80470C18  2C 00 00 0A */	cmpwi r0, 0xa
/* 80470C1C  41 82 00 44 */	beq lbl_80470C60
/* 80470C20  40 80 00 14 */	bge lbl_80470C34
/* 80470C24  2C 00 00 08 */	cmpwi r0, 8
/* 80470C28  41 82 00 18 */	beq lbl_80470C40
/* 80470C2C  40 80 00 20 */	bge lbl_80470C4C
/* 80470C30  48 00 00 30 */	b lbl_80470C60
lbl_80470C34:
/* 80470C34  2C 00 00 0C */	cmpwi r0, 0xc
/* 80470C38  40 80 00 28 */	bge lbl_80470C60
/* 80470C3C  48 00 00 1C */	b lbl_80470C58
lbl_80470C40:
/* 80470C40  7F C3 F3 78 */	mr r3, r30
/* 80470C44  48 00 00 AD */	bl checkCreate_LightBallA__12daObjCarry_cFv
/* 80470C48  48 00 00 18 */	b lbl_80470C60
lbl_80470C4C:
/* 80470C4C  7F C3 F3 78 */	mr r3, r30
/* 80470C50  48 00 04 FD */	bl checkCreate_LightBallB__12daObjCarry_cFv
/* 80470C54  48 00 00 0C */	b lbl_80470C60
lbl_80470C58:
/* 80470C58  7F C3 F3 78 */	mr r3, r30
/* 80470C5C  48 00 09 4D */	bl checkCreate_Lv8Ball__12daObjCarry_cFv
lbl_80470C60:
/* 80470C60  2C 03 00 02 */	cmpwi r3, 2
/* 80470C64  41 82 00 08 */	beq lbl_80470C6C
/* 80470C68  48 00 00 70 */	b lbl_80470CD8
lbl_80470C6C:
/* 80470C6C  7F C3 F3 78 */	mr r3, r30
/* 80470C70  4B FF EA 4D */	bl getArcName__12daObjCarry_cFv
/* 80470C74  7C 64 1B 78 */	mr r4, r3
/* 80470C78  38 7E 05 68 */	addi r3, r30, 0x568
/* 80470C7C  4B BB C2 41 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80470C80  7C 7F 1B 78 */	mr r31, r3
/* 80470C84  2C 1F 00 04 */	cmpwi r31, 4
/* 80470C88  40 82 00 4C */	bne lbl_80470CD4
/* 80470C8C  7F C3 F3 78 */	mr r3, r30
/* 80470C90  4B FF EA 15 */	bl data__12daObjCarry_cFv
/* 80470C94  7C 65 1B 78 */	mr r5, r3
/* 80470C98  7F C3 F3 78 */	mr r3, r30
/* 80470C9C  3C 80 80 47 */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha /* 0x8046F684@ha */
/* 80470CA0  38 84 F6 84 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l /* 0x8046F684@l */
/* 80470CA4  80 A5 00 90 */	lwz r5, 0x90(r5)
/* 80470CA8  4B BA 98 09 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80470CAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80470CB0  40 82 00 0C */	bne lbl_80470CBC
/* 80470CB4  38 60 00 05 */	li r3, 5
/* 80470CB8  48 00 00 20 */	b lbl_80470CD8
lbl_80470CBC:
/* 80470CBC  7F C3 F3 78 */	mr r3, r30
/* 80470CC0  4B FF F4 31 */	bl Create__12daObjCarry_cFv
/* 80470CC4  2C 03 00 00 */	cmpwi r3, 0
/* 80470CC8  40 82 00 0C */	bne lbl_80470CD4
/* 80470CCC  38 60 00 05 */	li r3, 5
/* 80470CD0  48 00 00 08 */	b lbl_80470CD8
lbl_80470CD4:
/* 80470CD4  7F E3 FB 78 */	mr r3, r31
lbl_80470CD8:
/* 80470CD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80470CDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80470CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80470CE4  7C 08 03 A6 */	mtlr r0
/* 80470CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80470CEC  4E 80 00 20 */	blr 
