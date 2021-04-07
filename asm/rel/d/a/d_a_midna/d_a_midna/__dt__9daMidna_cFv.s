lbl_804C61A4:
/* 804C61A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C61A8  7C 08 02 A6 */	mflr r0
/* 804C61AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C61B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C61B4  93 C1 00 08 */	stw r30, 8(r1)
/* 804C61B8  7C 7E 1B 79 */	or. r30, r3, r3
/* 804C61BC  7C 9F 23 78 */	mr r31, r4
/* 804C61C0  41 82 01 48 */	beq lbl_804C6308
/* 804C61C4  38 7E 05 68 */	addi r3, r30, 0x568
/* 804C61C8  3C 80 80 4C */	lis r4, l_arcName@ha /* 0x804C64D4@ha */
/* 804C61CC  38 84 64 D4 */	addi r4, r4, l_arcName@l /* 0x804C64D4@l */
/* 804C61D0  4B B6 6E 39 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 804C61D4  38 00 00 00 */	li r0, 0
/* 804C61D8  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 804C61DC  90 03 10 18 */	stw r0, m_midnaActor__9daPy_py_c@l(r3)  /* 0x80451018@l */
/* 804C61E0  38 7E 06 FC */	addi r3, r30, 0x6fc
/* 804C61E4  81 9E 06 FC */	lwz r12, 0x6fc(r30)
/* 804C61E8  81 8C 00 08 */	lwz r12, 8(r12)
/* 804C61EC  7D 89 03 A6 */	mtctr r12
/* 804C61F0  4E 80 04 21 */	bctrl 
/* 804C61F4  38 7E 09 64 */	addi r3, r30, 0x964
/* 804C61F8  3C 80 80 4C */	lis r4, __dt__4cXyzFv@ha /* 0x804BD8B8@ha */
/* 804C61FC  38 84 D8 B8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x804BD8B8@l */
/* 804C6200  38 A0 00 0C */	li r5, 0xc
/* 804C6204  38 C0 00 05 */	li r6, 5
/* 804C6208  4B E9 BA E1 */	bl __destroy_arr
/* 804C620C  38 7E 09 1C */	addi r3, r30, 0x91c
/* 804C6210  3C 80 80 4C */	lis r4, __dt__4cXyzFv@ha /* 0x804BD8B8@ha */
/* 804C6214  38 84 D8 B8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x804BD8B8@l */
/* 804C6218  38 A0 00 0C */	li r5, 0xc
/* 804C621C  38 C0 00 05 */	li r6, 5
/* 804C6220  4B E9 BA C9 */	bl __destroy_arr
/* 804C6224  38 7E 08 E0 */	addi r3, r30, 0x8e0
/* 804C6228  3C 80 80 4C */	lis r4, __dt__4cXyzFv@ha /* 0x804BD8B8@ha */
/* 804C622C  38 84 D8 B8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x804BD8B8@l */
/* 804C6230  38 A0 00 0C */	li r5, 0xc
/* 804C6234  38 C0 00 05 */	li r6, 5
/* 804C6238  4B E9 BA B1 */	bl __destroy_arr
/* 804C623C  38 7E 07 D8 */	addi r3, r30, 0x7d8
/* 804C6240  38 80 FF FF */	li r4, -1
/* 804C6244  4B BB 1E 49 */	bl __dt__15dBgS_LinkLinChkFv
/* 804C6248  38 7E 07 8C */	addi r3, r30, 0x78c
/* 804C624C  38 80 FF FF */	li r4, -1
/* 804C6250  4B D8 3C F9 */	bl __dt__10dMsgFlow_cFv
/* 804C6254  38 7E 06 FC */	addi r3, r30, 0x6fc
/* 804C6258  38 80 FF FF */	li r4, -1
/* 804C625C  4B DF A1 C5 */	bl __dt__10Z2CreatureFv
/* 804C6260  38 7E 06 34 */	addi r3, r30, 0x634
/* 804C6264  38 80 FF FF */	li r4, -1
/* 804C6268  4B C9 8A E9 */	bl __dt__14daPy_anmHeap_cFv
/* 804C626C  38 7E 06 20 */	addi r3, r30, 0x620
/* 804C6270  38 80 FF FF */	li r4, -1
/* 804C6274  4B C9 8A DD */	bl __dt__14daPy_anmHeap_cFv
/* 804C6278  38 7E 05 E4 */	addi r3, r30, 0x5e4
/* 804C627C  3C 80 80 16 */	lis r4, __dt__14daPy_anmHeap_cFv@ha /* 0x8015ED50@ha */
/* 804C6280  38 84 ED 50 */	addi r4, r4, __dt__14daPy_anmHeap_cFv@l /* 0x8015ED50@l */
/* 804C6284  38 A0 00 14 */	li r5, 0x14
/* 804C6288  38 C0 00 03 */	li r6, 3
/* 804C628C  4B E9 BA 5D */	bl __destroy_arr
/* 804C6290  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 804C6294  41 82 00 20 */	beq lbl_804C62B4
/* 804C6298  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 804C629C  41 82 00 18 */	beq lbl_804C62B4
/* 804C62A0  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 804C62A4  41 82 00 10 */	beq lbl_804C62B4
/* 804C62A8  3C 60 80 4C */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x804C6CA8@ha */
/* 804C62AC  38 03 6C A8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x804C6CA8@l */
/* 804C62B0  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_804C62B4:
/* 804C62B4  34 1E 05 84 */	addic. r0, r30, 0x584
/* 804C62B8  41 82 00 20 */	beq lbl_804C62D8
/* 804C62BC  34 1E 05 84 */	addic. r0, r30, 0x584
/* 804C62C0  41 82 00 18 */	beq lbl_804C62D8
/* 804C62C4  34 1E 05 84 */	addic. r0, r30, 0x584
/* 804C62C8  41 82 00 10 */	beq lbl_804C62D8
/* 804C62CC  3C 60 80 4C */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x804C6CA8@ha */
/* 804C62D0  38 03 6C A8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x804C6CA8@l */
/* 804C62D4  90 1E 05 84 */	stw r0, 0x584(r30)
lbl_804C62D8:
/* 804C62D8  34 1E 05 7C */	addic. r0, r30, 0x57c
/* 804C62DC  41 82 00 10 */	beq lbl_804C62EC
/* 804C62E0  3C 60 80 4C */	lis r3, __vt__20daMidna_McaMorfCB1_c@ha /* 0x804C6CB4@ha */
/* 804C62E4  38 03 6C B4 */	addi r0, r3, __vt__20daMidna_McaMorfCB1_c@l /* 0x804C6CB4@l */
/* 804C62E8  90 1E 05 7C */	stw r0, 0x57c(r30)
lbl_804C62EC:
/* 804C62EC  7F C3 F3 78 */	mr r3, r30
/* 804C62F0  38 80 00 00 */	li r4, 0
/* 804C62F4  4B B5 29 99 */	bl __dt__10fopAc_ac_cFv
/* 804C62F8  7F E0 07 35 */	extsh. r0, r31
/* 804C62FC  40 81 00 0C */	ble lbl_804C6308
/* 804C6300  7F C3 F3 78 */	mr r3, r30
/* 804C6304  4B E0 8A 39 */	bl __dl__FPv
lbl_804C6308:
/* 804C6308  7F C3 F3 78 */	mr r3, r30
/* 804C630C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C6310  83 C1 00 08 */	lwz r30, 8(r1)
/* 804C6314  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C6318  7C 08 03 A6 */	mtlr r0
/* 804C631C  38 21 00 10 */	addi r1, r1, 0x10
/* 804C6320  4E 80 00 20 */	blr 
