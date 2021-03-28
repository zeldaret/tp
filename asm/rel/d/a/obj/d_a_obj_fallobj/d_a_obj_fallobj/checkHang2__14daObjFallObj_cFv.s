lbl_80BE47A0:
/* 80BE47A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BE47A4  7C 08 02 A6 */	mflr r0
/* 80BE47A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE47AC  39 61 00 20 */	addi r11, r1, 0x20
/* 80BE47B0  4B 77 DA 2C */	b _savegpr_29
/* 80BE47B4  80 83 04 A4 */	lwz r4, 0x4a4(r3)
/* 80BE47B8  3C 04 00 01 */	addis r0, r4, 1
/* 80BE47BC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80BE47C0  40 82 00 1C */	bne lbl_80BE47DC
/* 80BE47C4  28 03 00 00 */	cmplwi r3, 0
/* 80BE47C8  41 82 00 0C */	beq lbl_80BE47D4
/* 80BE47CC  80 03 00 04 */	lwz r0, 4(r3)
/* 80BE47D0  48 00 00 68 */	b lbl_80BE4838
lbl_80BE47D4:
/* 80BE47D4  38 00 FF FF */	li r0, -1
/* 80BE47D8  48 00 00 60 */	b lbl_80BE4838
lbl_80BE47DC:
/* 80BE47DC  28 03 00 00 */	cmplwi r3, 0
/* 80BE47E0  41 82 00 0C */	beq lbl_80BE47EC
/* 80BE47E4  83 A3 00 04 */	lwz r29, 4(r3)
/* 80BE47E8  48 00 00 08 */	b lbl_80BE47F0
lbl_80BE47EC:
/* 80BE47EC  3B A0 FF FF */	li r29, -1
lbl_80BE47F0:
/* 80BE47F0  7C 9F 23 78 */	mr r31, r4
/* 80BE47F4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80BE47F8  3B C3 35 90 */	addi r30, r3, fpcSch_JudgeByID__FPvPv@l
lbl_80BE47FC:
/* 80BE47FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE4800  7F C3 F3 78 */	mr r3, r30
/* 80BE4804  38 81 00 0C */	addi r4, r1, 0xc
/* 80BE4808  4B 43 4F F0 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80BE480C  28 03 00 00 */	cmplwi r3, 0
/* 80BE4810  41 82 00 10 */	beq lbl_80BE4820
/* 80BE4814  7F FD FB 78 */	mr r29, r31
/* 80BE4818  83 E3 04 A4 */	lwz r31, 0x4a4(r3)
/* 80BE481C  48 00 00 0C */	b lbl_80BE4828
lbl_80BE4820:
/* 80BE4820  7F A0 EB 78 */	mr r0, r29
/* 80BE4824  48 00 00 14 */	b lbl_80BE4838
lbl_80BE4828:
/* 80BE4828  3C 1F 00 01 */	addis r0, r31, 1
/* 80BE482C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80BE4830  40 82 FF CC */	bne lbl_80BE47FC
/* 80BE4834  7F A0 EB 78 */	mr r0, r29
lbl_80BE4838:
/* 80BE4838  7C 04 03 78 */	mr r4, r0
/* 80BE483C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80BE4840  3B C3 35 90 */	addi r30, r3, fpcSch_JudgeByID__FPvPv@l
lbl_80BE4844:
/* 80BE4844  90 81 00 08 */	stw r4, 8(r1)
/* 80BE4848  7F C3 F3 78 */	mr r3, r30
/* 80BE484C  38 81 00 08 */	addi r4, r1, 8
/* 80BE4850  4B 43 4F A8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80BE4854  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE4858  40 82 00 0C */	bne lbl_80BE4864
/* 80BE485C  38 60 00 00 */	li r3, 0
/* 80BE4860  48 00 00 2C */	b lbl_80BE488C
lbl_80BE4864:
/* 80BE4864  4B FF FE 9D */	bl checkHang__14daObjFallObj_cFv
/* 80BE4868  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BE486C  41 82 00 0C */	beq lbl_80BE4878
/* 80BE4870  38 60 00 01 */	li r3, 1
/* 80BE4874  48 00 00 18 */	b lbl_80BE488C
lbl_80BE4878:
/* 80BE4878  80 9F 05 EC */	lwz r4, 0x5ec(r31)
/* 80BE487C  3C 04 00 01 */	addis r0, r4, 1
/* 80BE4880  28 00 FF FF */	cmplwi r0, 0xffff
/* 80BE4884  40 82 FF C0 */	bne lbl_80BE4844
/* 80BE4888  38 60 00 00 */	li r3, 0
lbl_80BE488C:
/* 80BE488C  39 61 00 20 */	addi r11, r1, 0x20
/* 80BE4890  4B 77 D9 98 */	b _restgpr_29
/* 80BE4894  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BE4898  7C 08 03 A6 */	mtlr r0
/* 80BE489C  38 21 00 20 */	addi r1, r1, 0x20
/* 80BE48A0  4E 80 00 20 */	blr 
