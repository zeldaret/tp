lbl_80CEF760:
/* 80CEF760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEF764  7C 08 02 A6 */	mflr r0
/* 80CEF768  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEF76C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CEF770  7C 7F 1B 78 */	mr r31, r3
/* 80CEF774  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CEF778  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CEF77C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CEF780  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CEF784  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CEF788  7C 05 07 74 */	extsb r5, r0
/* 80CEF78C  4B 34 5B D4 */	b isSwitch__10dSv_info_cCFii
/* 80CEF790  3C 80 80 CF */	lis r4, lit_3722@ha
/* 80CEF794  C0 24 FE 90 */	lfs f1, lit_3722@l(r4)
/* 80CEF798  C0 1F 05 74 */	lfs f0, 0x574(r31)
/* 80CEF79C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CEF7A0  40 82 00 10 */	bne lbl_80CEF7B0
/* 80CEF7A4  38 00 00 00 */	li r0, 0
/* 80CEF7A8  98 1F 05 84 */	stb r0, 0x584(r31)
/* 80CEF7AC  48 00 00 0C */	b lbl_80CEF7B8
lbl_80CEF7B0:
/* 80CEF7B0  38 00 00 01 */	li r0, 1
/* 80CEF7B4  98 1F 05 84 */	stb r0, 0x584(r31)
lbl_80CEF7B8:
/* 80CEF7B8  88 1F 05 85 */	lbz r0, 0x585(r31)
/* 80CEF7BC  28 00 00 FF */	cmplwi r0, 0xff
/* 80CEF7C0  41 82 00 24 */	beq lbl_80CEF7E4
/* 80CEF7C4  3C 80 80 CF */	lis r4, lit_3722@ha
/* 80CEF7C8  C0 24 FE 90 */	lfs f1, lit_3722@l(r4)
/* 80CEF7CC  C0 1F 05 74 */	lfs f0, 0x574(r31)
/* 80CEF7D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CEF7D4  41 82 00 10 */	beq lbl_80CEF7E4
/* 80CEF7D8  88 9F 05 84 */	lbz r4, 0x584(r31)
/* 80CEF7DC  38 04 00 02 */	addi r0, r4, 2
/* 80CEF7E0  98 1F 05 84 */	stb r0, 0x584(r31)
lbl_80CEF7E4:
/* 80CEF7E4  88 1F 05 84 */	lbz r0, 0x584(r31)
/* 80CEF7E8  28 00 00 01 */	cmplwi r0, 1
/* 80CEF7EC  40 82 00 0C */	bne lbl_80CEF7F8
/* 80CEF7F0  2C 03 00 00 */	cmpwi r3, 0
/* 80CEF7F4  41 82 00 14 */	beq lbl_80CEF808
lbl_80CEF7F8:
/* 80CEF7F8  28 00 00 03 */	cmplwi r0, 3
/* 80CEF7FC  40 82 01 1C */	bne lbl_80CEF918
/* 80CEF800  2C 03 00 00 */	cmpwi r3, 0
/* 80CEF804  40 82 01 14 */	bne lbl_80CEF918
lbl_80CEF808:
/* 80CEF808  38 00 00 01 */	li r0, 1
/* 80CEF80C  98 1F 05 86 */	stb r0, 0x586(r31)
/* 80CEF810  88 BF 05 85 */	lbz r5, 0x585(r31)
/* 80CEF814  28 05 00 FF */	cmplwi r5, 0xff
/* 80CEF818  41 82 00 C8 */	beq lbl_80CEF8E0
/* 80CEF81C  7C A3 2B 78 */	mr r3, r5
/* 80CEF820  4B 35 3C B8 */	b searchMapEventData__14dEvt_control_cFUc
/* 80CEF824  88 03 00 00 */	lbz r0, 0(r3)
/* 80CEF828  2C 00 00 01 */	cmpwi r0, 1
/* 80CEF82C  41 82 00 20 */	beq lbl_80CEF84C
/* 80CEF830  40 80 00 10 */	bge lbl_80CEF840
/* 80CEF834  2C 00 00 00 */	cmpwi r0, 0
/* 80CEF838  40 80 00 6C */	bge lbl_80CEF8A4
/* 80CEF83C  48 00 01 3C */	b lbl_80CEF978
lbl_80CEF840:
/* 80CEF840  2C 00 00 03 */	cmpwi r0, 3
/* 80CEF844  40 80 01 34 */	bge lbl_80CEF978
/* 80CEF848  48 00 00 5C */	b lbl_80CEF8A4
lbl_80CEF84C:
/* 80CEF84C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CEF850  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CEF854  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CEF858  7F E4 FB 78 */	mr r4, r31
/* 80CEF85C  88 BF 05 85 */	lbz r5, 0x585(r31)
/* 80CEF860  4B 35 7E 38 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 80CEF864  88 1F 05 84 */	lbz r0, 0x584(r31)
/* 80CEF868  54 00 08 3C */	slwi r0, r0, 1
/* 80CEF86C  7C 9F 02 14 */	add r4, r31, r0
/* 80CEF870  B0 64 05 7C */	sth r3, 0x57c(r4)
/* 80CEF874  7F E3 FB 78 */	mr r3, r31
/* 80CEF878  88 9F 05 85 */	lbz r4, 0x585(r31)
/* 80CEF87C  38 A0 00 FF */	li r5, 0xff
/* 80CEF880  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80CEF884  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80CEF888  38 E0 00 01 */	li r7, 1
/* 80CEF88C  39 00 00 00 */	li r8, 0
/* 80CEF890  4B 32 BF 24 */	b fopAcM_orderMapToolEvent__FP10fopAc_ac_cUcsUsUsUs
/* 80CEF894  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CEF898  60 00 00 02 */	ori r0, r0, 2
/* 80CEF89C  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80CEF8A0  48 00 00 D8 */	b lbl_80CEF978
lbl_80CEF8A4:
/* 80CEF8A4  7F E3 FB 78 */	mr r3, r31
/* 80CEF8A8  88 1F 05 84 */	lbz r0, 0x584(r31)
/* 80CEF8AC  54 00 08 3C */	slwi r0, r0, 1
/* 80CEF8B0  7C 9F 02 14 */	add r4, r31, r0
/* 80CEF8B4  A8 84 05 7C */	lha r4, 0x57c(r4)
/* 80CEF8B8  88 BF 05 85 */	lbz r5, 0x585(r31)
/* 80CEF8BC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80CEF8C0  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80CEF8C4  38 E0 00 00 */	li r7, 0
/* 80CEF8C8  39 00 00 01 */	li r8, 1
/* 80CEF8CC  4B 32 BD B0 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80CEF8D0  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CEF8D4  60 00 00 02 */	ori r0, r0, 2
/* 80CEF8D8  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80CEF8DC  48 00 00 9C */	b lbl_80CEF978
lbl_80CEF8E0:
/* 80CEF8E0  7F E3 FB 78 */	mr r3, r31
/* 80CEF8E4  88 1F 05 84 */	lbz r0, 0x584(r31)
/* 80CEF8E8  54 00 08 3C */	slwi r0, r0, 1
/* 80CEF8EC  7C 9F 02 14 */	add r4, r31, r0
/* 80CEF8F0  A8 84 05 7C */	lha r4, 0x57c(r4)
/* 80CEF8F4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80CEF8F8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80CEF8FC  38 E0 00 00 */	li r7, 0
/* 80CEF900  39 00 00 01 */	li r8, 1
/* 80CEF904  4B 32 BD 78 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80CEF908  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CEF90C  60 00 00 02 */	ori r0, r0, 2
/* 80CEF910  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80CEF914  48 00 00 64 */	b lbl_80CEF978
lbl_80CEF918:
/* 80CEF918  28 00 00 00 */	cmplwi r0, 0
/* 80CEF91C  40 82 00 0C */	bne lbl_80CEF928
/* 80CEF920  2C 03 00 00 */	cmpwi r3, 0
/* 80CEF924  40 82 00 14 */	bne lbl_80CEF938
lbl_80CEF928:
/* 80CEF928  28 00 00 02 */	cmplwi r0, 2
/* 80CEF92C  40 82 00 4C */	bne lbl_80CEF978
/* 80CEF930  2C 03 00 00 */	cmpwi r3, 0
/* 80CEF934  41 82 00 44 */	beq lbl_80CEF978
lbl_80CEF938:
/* 80CEF938  38 00 00 01 */	li r0, 1
/* 80CEF93C  98 1F 05 86 */	stb r0, 0x586(r31)
/* 80CEF940  7F E3 FB 78 */	mr r3, r31
/* 80CEF944  88 1F 05 84 */	lbz r0, 0x584(r31)
/* 80CEF948  54 00 08 3C */	slwi r0, r0, 1
/* 80CEF94C  7C 9F 02 14 */	add r4, r31, r0
/* 80CEF950  A8 84 05 7C */	lha r4, 0x57c(r4)
/* 80CEF954  38 A0 00 FF */	li r5, 0xff
/* 80CEF958  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80CEF95C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80CEF960  38 E0 00 00 */	li r7, 0
/* 80CEF964  39 00 00 01 */	li r8, 1
/* 80CEF968  4B 32 BD 14 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80CEF96C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CEF970  60 00 00 02 */	ori r0, r0, 2
/* 80CEF974  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80CEF978:
/* 80CEF978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CEF97C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEF980  7C 08 03 A6 */	mtlr r0
/* 80CEF984  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEF988  4E 80 00 20 */	blr 
