lbl_809538F8:
/* 809538F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809538FC  7C 08 02 A6 */	mflr r0
/* 80953900  90 01 00 14 */	stw r0, 0x14(r1)
/* 80953904  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80953908  93 C1 00 08 */	stw r30, 8(r1)
/* 8095390C  7C 7E 1B 78 */	mr r30, r3
/* 80953910  3C 80 80 95 */	lis r4, cNullVec__6Z2Calc@ha /* 0x809578E8@ha */
/* 80953914  3B E4 78 E8 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x809578E8@l */
/* 80953918  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 8095391C  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 80953920  80 85 00 00 */	lwz r4, 0(r5)
/* 80953924  80 05 00 04 */	lwz r0, 4(r5)
/* 80953928  90 83 0F A4 */	stw r4, 0xfa4(r3)
/* 8095392C  90 03 0F A8 */	stw r0, 0xfa8(r3)
/* 80953930  80 05 00 08 */	lwz r0, 8(r5)
/* 80953934  90 03 0F AC */	stw r0, 0xfac(r3)
/* 80953938  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 8095393C  2C 00 00 02 */	cmpwi r0, 2
/* 80953940  41 82 00 90 */	beq lbl_809539D0
/* 80953944  40 80 00 10 */	bge lbl_80953954
/* 80953948  2C 00 00 00 */	cmpwi r0, 0
/* 8095394C  41 82 00 14 */	beq lbl_80953960
/* 80953950  48 00 01 34 */	b lbl_80953A84
lbl_80953954:
/* 80953954  2C 00 00 04 */	cmpwi r0, 4
/* 80953958  41 82 00 BC */	beq lbl_80953A14
/* 8095395C  48 00 01 28 */	b lbl_80953A84
lbl_80953960:
/* 80953960  48 00 02 A9 */	bl chkSkipFenceStage__11daNpc_Aru_cFv
/* 80953964  2C 03 00 00 */	cmpwi r3, 0
/* 80953968  41 82 00 20 */	beq lbl_80953988
/* 8095396C  80 7F 05 F8 */	lwz r3, 0x5f8(r31)
/* 80953970  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 80953974  90 7E 0F A4 */	stw r3, 0xfa4(r30)
/* 80953978  90 1E 0F A8 */	stw r0, 0xfa8(r30)
/* 8095397C  80 1F 06 00 */	lwz r0, 0x600(r31)
/* 80953980  90 1E 0F AC */	stw r0, 0xfac(r30)
/* 80953984  48 00 01 18 */	b lbl_80953A9C
lbl_80953988:
/* 80953988  7F C3 F3 78 */	mr r3, r30
/* 8095398C  48 00 02 01 */	bl chkBullRunningStage__11daNpc_Aru_cFv
/* 80953990  2C 03 00 00 */	cmpwi r3, 0
/* 80953994  41 82 00 20 */	beq lbl_809539B4
/* 80953998  80 7F 06 04 */	lwz r3, 0x604(r31)
/* 8095399C  80 1F 06 08 */	lwz r0, 0x608(r31)
/* 809539A0  90 7E 0F A4 */	stw r3, 0xfa4(r30)
/* 809539A4  90 1E 0F A8 */	stw r0, 0xfa8(r30)
/* 809539A8  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 809539AC  90 1E 0F AC */	stw r0, 0xfac(r30)
/* 809539B0  48 00 00 EC */	b lbl_80953A9C
lbl_809539B4:
/* 809539B4  80 7F 06 10 */	lwz r3, 0x610(r31)
/* 809539B8  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 809539BC  90 7E 0F A4 */	stw r3, 0xfa4(r30)
/* 809539C0  90 1E 0F A8 */	stw r0, 0xfa8(r30)
/* 809539C4  80 1F 06 18 */	lwz r0, 0x618(r31)
/* 809539C8  90 1E 0F AC */	stw r0, 0xfac(r30)
/* 809539CC  48 00 00 D0 */	b lbl_80953A9C
lbl_809539D0:
/* 809539D0  48 00 01 BD */	bl chkBullRunningStage__11daNpc_Aru_cFv
/* 809539D4  2C 03 00 00 */	cmpwi r3, 0
/* 809539D8  41 82 00 20 */	beq lbl_809539F8
/* 809539DC  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 809539E0  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 809539E4  90 7E 0F A4 */	stw r3, 0xfa4(r30)
/* 809539E8  90 1E 0F A8 */	stw r0, 0xfa8(r30)
/* 809539EC  80 1F 06 24 */	lwz r0, 0x624(r31)
/* 809539F0  90 1E 0F AC */	stw r0, 0xfac(r30)
/* 809539F4  48 00 00 A8 */	b lbl_80953A9C
lbl_809539F8:
/* 809539F8  80 7F 06 28 */	lwz r3, 0x628(r31)
/* 809539FC  80 1F 06 2C */	lwz r0, 0x62c(r31)
/* 80953A00  90 7E 0F A4 */	stw r3, 0xfa4(r30)
/* 80953A04  90 1E 0F A8 */	stw r0, 0xfa8(r30)
/* 80953A08  80 1F 06 30 */	lwz r0, 0x630(r31)
/* 80953A0C  90 1E 0F AC */	stw r0, 0xfac(r30)
/* 80953A10  48 00 00 8C */	b lbl_80953A9C
lbl_80953A14:
/* 80953A14  48 00 01 F5 */	bl chkSkipFenceStage__11daNpc_Aru_cFv
/* 80953A18  2C 03 00 00 */	cmpwi r3, 0
/* 80953A1C  41 82 00 20 */	beq lbl_80953A3C
/* 80953A20  80 7F 06 34 */	lwz r3, 0x634(r31)
/* 80953A24  80 1F 06 38 */	lwz r0, 0x638(r31)
/* 80953A28  90 7E 0F A4 */	stw r3, 0xfa4(r30)
/* 80953A2C  90 1E 0F A8 */	stw r0, 0xfa8(r30)
/* 80953A30  80 1F 06 3C */	lwz r0, 0x63c(r31)
/* 80953A34  90 1E 0F AC */	stw r0, 0xfac(r30)
/* 80953A38  48 00 00 64 */	b lbl_80953A9C
lbl_80953A3C:
/* 80953A3C  7F C3 F3 78 */	mr r3, r30
/* 80953A40  48 00 01 4D */	bl chkBullRunningStage__11daNpc_Aru_cFv
/* 80953A44  2C 03 00 00 */	cmpwi r3, 0
/* 80953A48  41 82 00 20 */	beq lbl_80953A68
/* 80953A4C  80 7F 06 40 */	lwz r3, 0x640(r31)
/* 80953A50  80 1F 06 44 */	lwz r0, 0x644(r31)
/* 80953A54  90 7E 0F A4 */	stw r3, 0xfa4(r30)
/* 80953A58  90 1E 0F A8 */	stw r0, 0xfa8(r30)
/* 80953A5C  80 1F 06 48 */	lwz r0, 0x648(r31)
/* 80953A60  90 1E 0F AC */	stw r0, 0xfac(r30)
/* 80953A64  48 00 00 38 */	b lbl_80953A9C
lbl_80953A68:
/* 80953A68  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 80953A6C  80 1F 06 50 */	lwz r0, 0x650(r31)
/* 80953A70  90 7E 0F A4 */	stw r3, 0xfa4(r30)
/* 80953A74  90 1E 0F A8 */	stw r0, 0xfa8(r30)
/* 80953A78  80 1F 06 54 */	lwz r0, 0x654(r31)
/* 80953A7C  90 1E 0F AC */	stw r0, 0xfac(r30)
/* 80953A80  48 00 00 1C */	b lbl_80953A9C
lbl_80953A84:
/* 80953A84  80 7F 06 58 */	lwz r3, 0x658(r31)
/* 80953A88  80 1F 06 5C */	lwz r0, 0x65c(r31)
/* 80953A8C  90 7E 0F A4 */	stw r3, 0xfa4(r30)
/* 80953A90  90 1E 0F A8 */	stw r0, 0xfa8(r30)
/* 80953A94  80 1F 06 60 */	lwz r0, 0x660(r31)
/* 80953A98  90 1E 0F AC */	stw r0, 0xfac(r30)
lbl_80953A9C:
/* 80953A9C  38 60 00 01 */	li r3, 1
/* 80953AA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80953AA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80953AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80953AAC  7C 08 03 A6 */	mtlr r0
/* 80953AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80953AB4  4E 80 00 20 */	blr 
