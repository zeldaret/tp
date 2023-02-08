lbl_809DD070:
/* 809DD070  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 809DD074  7C 08 02 A6 */	mflr r0
/* 809DD078  90 01 00 54 */	stw r0, 0x54(r1)
/* 809DD07C  39 61 00 50 */	addi r11, r1, 0x50
/* 809DD080  4B 98 51 51 */	bl _savegpr_26
/* 809DD084  7C 7B 1B 78 */	mr r27, r3
/* 809DD088  3C 60 80 9E */	lis r3, cNullVec__6Z2Calc@ha /* 0x809DF2F8@ha */
/* 809DD08C  3B C3 F2 F8 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x809DF2F8@l */
/* 809DD090  3B 80 00 00 */	li r28, 0
/* 809DD094  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809DD098  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809DD09C  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 809DD0A0  28 00 00 00 */	cmplwi r0, 0
/* 809DD0A4  41 82 02 DC */	beq lbl_809DD380
/* 809DD0A8  3B BF 4F F8 */	addi r29, r31, 0x4ff8
/* 809DD0AC  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 809DD0B0  28 00 00 01 */	cmplwi r0, 1
/* 809DD0B4  41 82 00 0C */	beq lbl_809DD0C0
/* 809DD0B8  28 00 00 02 */	cmplwi r0, 2
/* 809DD0BC  40 82 00 18 */	bne lbl_809DD0D4
lbl_809DD0C0:
/* 809DD0C0  88 1B 0E 2C */	lbz r0, 0xe2c(r27)
/* 809DD0C4  28 00 00 00 */	cmplwi r0, 0
/* 809DD0C8  40 82 00 0C */	bne lbl_809DD0D4
/* 809DD0CC  38 00 00 00 */	li r0, 0
/* 809DD0D0  98 1B 09 ED */	stb r0, 0x9ed(r27)
lbl_809DD0D4:
/* 809DD0D4  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 809DD0D8  28 00 00 01 */	cmplwi r0, 1
/* 809DD0DC  40 82 00 B0 */	bne lbl_809DD18C
/* 809DD0E0  80 7E 02 A8 */	lwz r3, 0x2a8(r30)
/* 809DD0E4  80 1E 02 AC */	lwz r0, 0x2ac(r30)
/* 809DD0E8  90 61 00 28 */	stw r3, 0x28(r1)
/* 809DD0EC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 809DD0F0  80 1E 02 B0 */	lwz r0, 0x2b0(r30)
/* 809DD0F4  90 01 00 30 */	stw r0, 0x30(r1)
/* 809DD0F8  7F 63 DB 78 */	mr r3, r27
/* 809DD0FC  38 81 00 28 */	addi r4, r1, 0x28
/* 809DD100  4B FF FC A5 */	bl chkAction__11daNpc_grO_cFM11daNpc_grO_cFPCvPvPv_i
/* 809DD104  2C 03 00 00 */	cmpwi r3, 0
/* 809DD108  41 82 00 1C */	beq lbl_809DD124
/* 809DD10C  7F 63 DB 78 */	mr r3, r27
/* 809DD110  38 80 00 00 */	li r4, 0
/* 809DD114  39 9B 0D E0 */	addi r12, r27, 0xde0
/* 809DD118  4B 98 4F 6D */	bl __ptmf_scall
/* 809DD11C  60 00 00 00 */	nop 
/* 809DD120  48 00 00 64 */	b lbl_809DD184
lbl_809DD124:
/* 809DD124  38 00 00 00 */	li r0, 0
/* 809DD128  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809DD12C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809DD130  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 809DD134  28 03 00 01 */	cmplwi r3, 1
/* 809DD138  41 82 00 0C */	beq lbl_809DD144
/* 809DD13C  28 03 00 02 */	cmplwi r3, 2
/* 809DD140  40 82 00 08 */	bne lbl_809DD148
lbl_809DD144:
/* 809DD144  38 00 00 01 */	li r0, 1
lbl_809DD148:
/* 809DD148  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809DD14C  41 82 00 14 */	beq lbl_809DD160
/* 809DD150  7F A3 EB 78 */	mr r3, r29
/* 809DD154  4B 66 B6 9D */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 809DD158  2C 03 00 00 */	cmpwi r3, 0
/* 809DD15C  41 82 00 28 */	beq lbl_809DD184
lbl_809DD160:
/* 809DD160  80 7E 02 B4 */	lwz r3, 0x2b4(r30)
/* 809DD164  80 1E 02 B8 */	lwz r0, 0x2b8(r30)
/* 809DD168  90 61 00 1C */	stw r3, 0x1c(r1)
/* 809DD16C  90 01 00 20 */	stw r0, 0x20(r1)
/* 809DD170  80 1E 02 BC */	lwz r0, 0x2bc(r30)
/* 809DD174  90 01 00 24 */	stw r0, 0x24(r1)
/* 809DD178  7F 63 DB 78 */	mr r3, r27
/* 809DD17C  38 81 00 1C */	addi r4, r1, 0x1c
/* 809DD180  4B FF FC 51 */	bl setAction__11daNpc_grO_cFM11daNpc_grO_cFPCvPvPv_i
lbl_809DD184:
/* 809DD184  3B 80 00 01 */	li r28, 1
/* 809DD188  48 00 00 DC */	b lbl_809DD264
lbl_809DD18C:
/* 809DD18C  80 9B 0E 28 */	lwz r4, 0xe28(r27)
/* 809DD190  3C 04 00 01 */	addis r0, r4, 1
/* 809DD194  28 00 FF FF */	cmplwi r0, 0xffff
/* 809DD198  41 82 00 14 */	beq lbl_809DD1AC
/* 809DD19C  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 809DD1A0  4B 66 65 4D */	bl setPtI_Id__14dEvt_control_cFUi
/* 809DD1A4  38 00 FF FF */	li r0, -1
/* 809DD1A8  90 1B 0E 28 */	stw r0, 0xe28(r27)
lbl_809DD1AC:
/* 809DD1AC  7F A3 EB 78 */	mr r3, r29
/* 809DD1B0  80 9E 01 C4 */	lwz r4, 0x1c4(r30)
/* 809DD1B4  38 A0 00 00 */	li r5, 0
/* 809DD1B8  38 C0 00 00 */	li r6, 0
/* 809DD1BC  4B 66 A9 61 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 809DD1C0  7C 7A 1B 78 */	mr r26, r3
/* 809DD1C4  2C 1A FF FF */	cmpwi r26, -1
/* 809DD1C8  41 82 00 5C */	beq lbl_809DD224
/* 809DD1CC  93 5B 09 2C */	stw r26, 0x92c(r27)
/* 809DD1D0  7F A3 EB 78 */	mr r3, r29
/* 809DD1D4  7F 44 D3 78 */	mr r4, r26
/* 809DD1D8  38 BE 01 C8 */	addi r5, r30, 0x1c8
/* 809DD1DC  38 C0 00 03 */	li r6, 3
/* 809DD1E0  38 E0 00 00 */	li r7, 0
/* 809DD1E4  39 00 00 00 */	li r8, 0
/* 809DD1E8  4B 66 AC 29 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 809DD1EC  7C 60 1B 78 */	mr r0, r3
/* 809DD1F0  7F 63 DB 78 */	mr r3, r27
/* 809DD1F4  7F 44 D3 78 */	mr r4, r26
/* 809DD1F8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 809DD1FC  39 9E 01 EC */	addi r12, r30, 0x1ec
/* 809DD200  7D 8C 02 14 */	add r12, r12, r0
/* 809DD204  4B 98 4E 81 */	bl __ptmf_scall
/* 809DD208  60 00 00 00 */	nop 
/* 809DD20C  2C 03 00 00 */	cmpwi r3, 0
/* 809DD210  41 82 00 10 */	beq lbl_809DD220
/* 809DD214  7F A3 EB 78 */	mr r3, r29
/* 809DD218  7F 44 D3 78 */	mr r4, r26
/* 809DD21C  4B 66 AF 61 */	bl cutEnd__16dEvent_manager_cFi
lbl_809DD220:
/* 809DD220  3B 80 00 01 */	li r28, 1
lbl_809DD224:
/* 809DD224  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 809DD228  28 00 00 02 */	cmplwi r0, 2
/* 809DD22C  40 82 00 38 */	bne lbl_809DD264
/* 809DD230  A8 9B 09 D4 */	lha r4, 0x9d4(r27)
/* 809DD234  2C 04 FF FF */	cmpwi r4, -1
/* 809DD238  41 82 00 2C */	beq lbl_809DD264
/* 809DD23C  7F A3 EB 78 */	mr r3, r29
/* 809DD240  4B 66 A8 39 */	bl endCheck__16dEvent_manager_cFs
/* 809DD244  2C 03 00 00 */	cmpwi r3, 0
/* 809DD248  41 82 00 1C */	beq lbl_809DD264
/* 809DD24C  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 809DD250  4B 66 52 19 */	bl reset__14dEvt_control_cFv
/* 809DD254  38 00 00 00 */	li r0, 0
/* 809DD258  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 809DD25C  38 00 FF FF */	li r0, -1
/* 809DD260  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
lbl_809DD264:
/* 809DD264  83 5B 09 50 */	lwz r26, 0x950(r27)
/* 809DD268  7F 63 DB 78 */	mr r3, r27
/* 809DD26C  38 81 00 0C */	addi r4, r1, 0xc
/* 809DD270  38 A1 00 08 */	addi r5, r1, 8
/* 809DD274  7F 66 DB 78 */	mr r6, r27
/* 809DD278  38 E0 00 00 */	li r7, 0
/* 809DD27C  4B 77 64 9D */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 809DD280  2C 03 00 00 */	cmpwi r3, 0
/* 809DD284  41 82 00 A8 */	beq lbl_809DD32C
/* 809DD288  88 1B 09 EB */	lbz r0, 0x9eb(r27)
/* 809DD28C  28 00 00 00 */	cmplwi r0, 0
/* 809DD290  40 82 00 B8 */	bne lbl_809DD348
/* 809DD294  7F 63 DB 78 */	mr r3, r27
/* 809DD298  80 81 00 0C */	lwz r4, 0xc(r1)
/* 809DD29C  3C A0 80 9E */	lis r5, lit_4812@ha /* 0x809DF01C@ha */
/* 809DD2A0  C0 25 F0 1C */	lfs f1, lit_4812@l(r5)  /* 0x809DF01C@l */
/* 809DD2A4  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809DD2A8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809DD2AC  7D 89 03 A6 */	mtctr r12
/* 809DD2B0  4E 80 04 21 */	bctrl 
/* 809DD2B4  7F 63 DB 78 */	mr r3, r27
/* 809DD2B8  80 81 00 08 */	lwz r4, 8(r1)
/* 809DD2BC  3C A0 80 9E */	lis r5, lit_4812@ha /* 0x809DF01C@ha */
/* 809DD2C0  C0 25 F0 1C */	lfs f1, lit_4812@l(r5)  /* 0x809DF01C@l */
/* 809DD2C4  38 A0 00 01 */	li r5, 1
/* 809DD2C8  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809DD2CC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809DD2D0  7D 89 03 A6 */	mtctr r12
/* 809DD2D4  4E 80 04 21 */	bctrl 
/* 809DD2D8  80 7E 02 C0 */	lwz r3, 0x2c0(r30)
/* 809DD2DC  80 1E 02 C4 */	lwz r0, 0x2c4(r30)
/* 809DD2E0  90 61 00 10 */	stw r3, 0x10(r1)
/* 809DD2E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DD2E8  80 1E 02 C8 */	lwz r0, 0x2c8(r30)
/* 809DD2EC  90 01 00 18 */	stw r0, 0x18(r1)
/* 809DD2F0  7F 63 DB 78 */	mr r3, r27
/* 809DD2F4  38 81 00 10 */	addi r4, r1, 0x10
/* 809DD2F8  4B FF FA AD */	bl chkAction__11daNpc_grO_cFM11daNpc_grO_cFPCvPvPv_i
/* 809DD2FC  2C 03 00 00 */	cmpwi r3, 0
/* 809DD300  41 82 00 48 */	beq lbl_809DD348
/* 809DD304  88 1B 0E 24 */	lbz r0, 0xe24(r27)
/* 809DD308  28 00 00 01 */	cmplwi r0, 1
/* 809DD30C  40 82 00 3C */	bne lbl_809DD348
/* 809DD310  A8 1B 09 E0 */	lha r0, 0x9e0(r27)
/* 809DD314  2C 00 00 05 */	cmpwi r0, 5
/* 809DD318  40 82 00 30 */	bne lbl_809DD348
/* 809DD31C  7F 63 DB 78 */	mr r3, r27
/* 809DD320  38 80 00 00 */	li r4, 0
/* 809DD324  48 00 00 B5 */	bl setLookMode__11daNpc_grO_cFi
/* 809DD328  48 00 00 20 */	b lbl_809DD348
lbl_809DD32C:
/* 809DD32C  2C 1A 00 00 */	cmpwi r26, 0
/* 809DD330  41 82 00 18 */	beq lbl_809DD348
/* 809DD334  88 1B 09 EB */	lbz r0, 0x9eb(r27)
/* 809DD338  28 00 00 00 */	cmplwi r0, 0
/* 809DD33C  40 82 00 0C */	bne lbl_809DD348
/* 809DD340  7F 63 DB 78 */	mr r3, r27
/* 809DD344  48 00 03 41 */	bl setExpressionTalkAfter__11daNpc_grO_cFv
lbl_809DD348:
/* 809DD348  A8 1B 09 DE */	lha r0, 0x9de(r27)
/* 809DD34C  2C 00 00 02 */	cmpwi r0, 2
/* 809DD350  41 82 00 14 */	beq lbl_809DD364
/* 809DD354  2C 00 00 04 */	cmpwi r0, 4
/* 809DD358  41 82 00 0C */	beq lbl_809DD364
/* 809DD35C  2C 00 00 05 */	cmpwi r0, 5
/* 809DD360  40 82 00 5C */	bne lbl_809DD3BC
lbl_809DD364:
/* 809DD364  A8 1B 09 D6 */	lha r0, 0x9d6(r27)
/* 809DD368  2C 00 00 00 */	cmpwi r0, 0
/* 809DD36C  40 82 00 50 */	bne lbl_809DD3BC
/* 809DD370  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 809DD374  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 809DD378  90 1B 09 9C */	stw r0, 0x99c(r27)
/* 809DD37C  48 00 00 40 */	b lbl_809DD3BC
lbl_809DD380:
/* 809DD380  38 00 00 00 */	li r0, 0
/* 809DD384  90 1B 09 50 */	stw r0, 0x950(r27)
/* 809DD388  80 1B 09 2C */	lwz r0, 0x92c(r27)
/* 809DD38C  2C 00 FF FF */	cmpwi r0, -1
/* 809DD390  41 82 00 2C */	beq lbl_809DD3BC
/* 809DD394  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 809DD398  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 809DD39C  80 64 00 00 */	lwz r3, 0(r4)
/* 809DD3A0  80 04 00 04 */	lwz r0, 4(r4)
/* 809DD3A4  90 7B 0D E0 */	stw r3, 0xde0(r27)
/* 809DD3A8  90 1B 0D E4 */	stw r0, 0xde4(r27)
/* 809DD3AC  80 04 00 08 */	lwz r0, 8(r4)
/* 809DD3B0  90 1B 0D E8 */	stw r0, 0xde8(r27)
/* 809DD3B4  38 00 FF FF */	li r0, -1
/* 809DD3B8  90 1B 09 2C */	stw r0, 0x92c(r27)
lbl_809DD3BC:
/* 809DD3BC  7F 83 E3 78 */	mr r3, r28
/* 809DD3C0  39 61 00 50 */	addi r11, r1, 0x50
/* 809DD3C4  4B 98 4E 59 */	bl _restgpr_26
/* 809DD3C8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 809DD3CC  7C 08 03 A6 */	mtlr r0
/* 809DD3D0  38 21 00 50 */	addi r1, r1, 0x50
/* 809DD3D4  4E 80 00 20 */	blr 
