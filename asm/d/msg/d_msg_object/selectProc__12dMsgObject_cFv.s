lbl_8023531C:
/* 8023531C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80235320  7C 08 02 A6 */	mflr r0
/* 80235324  90 01 00 34 */	stw r0, 0x34(r1)
/* 80235328  39 61 00 30 */	addi r11, r1, 0x30
/* 8023532C  48 12 CE A9 */	bl _savegpr_27
/* 80235330  7C 7F 1B 78 */	mr r31, r3
/* 80235334  3B 80 00 00 */	li r28, 0
/* 80235338  3B 60 00 00 */	li r27, 0
/* 8023533C  48 00 1D C1 */	bl isMidonaMessage__12dMsgObject_cFv
/* 80235340  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80235344  40 82 00 0C */	bne lbl_80235350
/* 80235348  38 00 00 00 */	li r0, 0
/* 8023534C  98 1F 01 A3 */	stb r0, 0x1a3(r31)
lbl_80235350:
/* 80235350  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 80235354  81 83 00 00 */	lwz r12, 0(r3)
/* 80235358  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8023535C  7D 89 03 A6 */	mtctr r12
/* 80235360  4E 80 04 21 */	bctrl 
/* 80235364  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80235368  40 82 00 18 */	bne lbl_80235380
/* 8023536C  7F E3 FB 78 */	mr r3, r31
/* 80235370  48 00 15 89 */	bl getStatusLocal__12dMsgObject_cFv
/* 80235374  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80235378  28 00 00 14 */	cmplwi r0, 0x14
/* 8023537C  40 82 00 38 */	bne lbl_802353B4
lbl_80235380:
/* 80235380  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 80235384  4B FF 3D E5 */	bl selectMessage__19jmessage_tReferenceFv
/* 80235388  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8023538C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80235390  88 03 00 BD */	lbz r0, 0xbd(r3)
/* 80235394  28 00 00 00 */	cmplwi r0, 0
/* 80235398  41 82 00 1C */	beq lbl_802353B4
/* 8023539C  38 00 00 2A */	li r0, 0x2a
/* 802353A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802353A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802353A8  98 03 5E 35 */	stb r0, 0x5e35(r3)
/* 802353AC  38 00 00 00 */	li r0, 0
/* 802353B0  98 03 5E 50 */	stb r0, 0x5e50(r3)
lbl_802353B4:
/* 802353B4  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 802353B8  3B C3 D2 E8 */	addi r30, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 802353BC  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 802353C0  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 802353C4  41 82 00 24 */	beq lbl_802353E8
/* 802353C8  7F E3 FB 78 */	mr r3, r31
/* 802353CC  48 00 2A 8D */	bl getSelectCursorPosLocal__12dMsgObject_cFv
/* 802353D0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802353D4  28 00 00 FF */	cmplwi r0, 0xff
/* 802353D8  41 82 01 48 */	beq lbl_80235520
/* 802353DC  38 00 00 01 */	li r0, 1
/* 802353E0  98 1F 01 A3 */	stb r0, 0x1a3(r31)
/* 802353E4  48 00 01 3C */	b lbl_80235520
lbl_802353E8:
/* 802353E8  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 802353EC  41 82 01 34 */	beq lbl_80235520
/* 802353F0  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 802353F4  81 83 00 00 */	lwz r12, 0(r3)
/* 802353F8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802353FC  7D 89 03 A6 */	mtctr r12
/* 80235400  4E 80 04 21 */	bctrl 
/* 80235404  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80235408  40 82 00 18 */	bne lbl_80235420
/* 8023540C  7F E3 FB 78 */	mr r3, r31
/* 80235410  48 00 14 E9 */	bl getStatusLocal__12dMsgObject_cFv
/* 80235414  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80235418  28 00 00 14 */	cmplwi r0, 0x14
/* 8023541C  40 82 01 04 */	bne lbl_80235520
lbl_80235420:
/* 80235420  88 9F 01 A1 */	lbz r4, 0x1a1(r31)
/* 80235424  28 04 00 00 */	cmplwi r4, 0
/* 80235428  41 82 00 F8 */	beq lbl_80235520
/* 8023542C  7F E3 FB 78 */	mr r3, r31
/* 80235430  38 04 FF FF */	addi r0, r4, -1
/* 80235434  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80235438  48 00 2A 31 */	bl setSelectCursorPosLocal__12dMsgObject_cFUc
/* 8023543C  3B 80 00 01 */	li r28, 1
/* 80235440  7F E3 FB 78 */	mr r3, r31
/* 80235444  48 00 14 B5 */	bl getStatusLocal__12dMsgObject_cFv
/* 80235448  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8023544C  28 00 00 08 */	cmplwi r0, 8
/* 80235450  40 82 00 80 */	bne lbl_802354D0
/* 80235454  88 1F 01 A1 */	lbz r0, 0x1a1(r31)
/* 80235458  28 00 00 02 */	cmplwi r0, 2
/* 8023545C  41 81 00 BC */	bgt lbl_80235518
/* 80235460  7F E3 FB 78 */	mr r3, r31
/* 80235464  48 00 29 F5 */	bl getSelectCursorPosLocal__12dMsgObject_cFv
/* 80235468  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8023546C  28 00 00 FF */	cmplwi r0, 0xff
/* 80235470  41 82 00 34 */	beq lbl_802354A4
/* 80235474  7F E3 FB 78 */	mr r3, r31
/* 80235478  48 00 29 E1 */	bl getSelectCursorPosLocal__12dMsgObject_cFv
/* 8023547C  38 03 00 01 */	addi r0, r3, 1
/* 80235480  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80235484  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 80235488  38 80 00 02 */	li r4, 2
/* 8023548C  38 C0 00 01 */	li r6, 1
/* 80235490  81 83 00 00 */	lwz r12, 0(r3)
/* 80235494  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80235498  7D 89 03 A6 */	mtctr r12
/* 8023549C  4E 80 04 21 */	bctrl 
/* 802354A0  48 00 00 78 */	b lbl_80235518
lbl_802354A4:
/* 802354A4  7F E3 FB 78 */	mr r3, r31
/* 802354A8  48 00 29 B1 */	bl getSelectCursorPosLocal__12dMsgObject_cFv
/* 802354AC  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 802354B0  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 802354B4  38 80 00 02 */	li r4, 2
/* 802354B8  38 C0 00 01 */	li r6, 1
/* 802354BC  81 83 00 00 */	lwz r12, 0(r3)
/* 802354C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802354C4  7D 89 03 A6 */	mtctr r12
/* 802354C8  4E 80 04 21 */	bctrl 
/* 802354CC  48 00 00 4C */	b lbl_80235518
lbl_802354D0:
/* 802354D0  7F E3 FB 78 */	mr r3, r31
/* 802354D4  48 00 14 25 */	bl getStatusLocal__12dMsgObject_cFv
/* 802354D8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 802354DC  28 00 00 09 */	cmplwi r0, 9
/* 802354E0  40 82 00 38 */	bne lbl_80235518
/* 802354E4  88 1F 01 A1 */	lbz r0, 0x1a1(r31)
/* 802354E8  28 00 00 03 */	cmplwi r0, 3
/* 802354EC  41 81 00 2C */	bgt lbl_80235518
/* 802354F0  7F E3 FB 78 */	mr r3, r31
/* 802354F4  48 00 29 65 */	bl getSelectCursorPosLocal__12dMsgObject_cFv
/* 802354F8  7C 65 1B 78 */	mr r5, r3
/* 802354FC  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 80235500  38 80 00 03 */	li r4, 3
/* 80235504  38 C0 00 01 */	li r6, 1
/* 80235508  81 83 00 00 */	lwz r12, 0(r3)
/* 8023550C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80235510  7D 89 03 A6 */	mtctr r12
/* 80235514  4E 80 04 21 */	bctrl 
lbl_80235518:
/* 80235518  38 00 00 02 */	li r0, 2
/* 8023551C  98 1F 01 A3 */	stb r0, 0x1a3(r31)
lbl_80235520:
/* 80235520  80 7F 01 20 */	lwz r3, 0x120(r31)
/* 80235524  83 A3 00 04 */	lwz r29, 4(r3)
/* 80235528  7F E3 FB 78 */	mr r3, r31
/* 8023552C  48 00 13 CD */	bl getStatusLocal__12dMsgObject_cFv
/* 80235530  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80235534  28 00 00 08 */	cmplwi r0, 8
/* 80235538  40 82 01 60 */	bne lbl_80235698
/* 8023553C  7F E3 FB 78 */	mr r3, r31
/* 80235540  48 00 1B BD */	bl isMidonaMessage__12dMsgObject_cFv
/* 80235544  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80235548  41 82 00 B0 */	beq lbl_802355F8
/* 8023554C  88 1F 01 A3 */	lbz r0, 0x1a3(r31)
/* 80235550  28 00 00 00 */	cmplwi r0, 0
/* 80235554  41 82 00 A4 */	beq lbl_802355F8
/* 80235558  28 00 00 02 */	cmplwi r0, 2
/* 8023555C  40 82 00 90 */	bne lbl_802355EC
/* 80235560  88 1F 01 A1 */	lbz r0, 0x1a1(r31)
/* 80235564  28 00 00 03 */	cmplwi r0, 3
/* 80235568  40 82 00 84 */	bne lbl_802355EC
/* 8023556C  3B 60 00 01 */	li r27, 1
/* 80235570  48 00 01 1C */	b lbl_8023568C
/* 80235574  48 00 00 78 */	b lbl_802355EC
lbl_80235578:
/* 80235578  7F E3 FB 78 */	mr r3, r31
/* 8023557C  48 00 28 DD */	bl getSelectCursorPosLocal__12dMsgObject_cFv
/* 80235580  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80235584  28 00 00 FF */	cmplwi r0, 0xff
/* 80235588  41 82 00 38 */	beq lbl_802355C0
/* 8023558C  7F E3 FB 78 */	mr r3, r31
/* 80235590  48 00 28 C9 */	bl getSelectCursorPosLocal__12dMsgObject_cFv
/* 80235594  38 03 00 01 */	addi r0, r3, 1
/* 80235598  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8023559C  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 802355A0  38 80 00 02 */	li r4, 2
/* 802355A4  7F 86 E3 78 */	mr r6, r28
/* 802355A8  81 83 00 00 */	lwz r12, 0(r3)
/* 802355AC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802355B0  7D 89 03 A6 */	mtctr r12
/* 802355B4  4E 80 04 21 */	bctrl 
/* 802355B8  7C 7B 1B 78 */	mr r27, r3
/* 802355BC  48 00 00 30 */	b lbl_802355EC
lbl_802355C0:
/* 802355C0  7F E3 FB 78 */	mr r3, r31
/* 802355C4  48 00 28 95 */	bl getSelectCursorPosLocal__12dMsgObject_cFv
/* 802355C8  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 802355CC  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 802355D0  38 80 00 02 */	li r4, 2
/* 802355D4  7F 86 E3 78 */	mr r6, r28
/* 802355D8  81 83 00 00 */	lwz r12, 0(r3)
/* 802355DC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802355E0  7D 89 03 A6 */	mtctr r12
/* 802355E4  4E 80 04 21 */	bctrl 
/* 802355E8  7C 7B 1B 78 */	mr r27, r3
lbl_802355EC:
/* 802355EC  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 802355F0  41 82 FF 88 */	beq lbl_80235578
/* 802355F4  48 00 00 98 */	b lbl_8023568C
lbl_802355F8:
/* 802355F8  88 1F 01 A3 */	lbz r0, 0x1a3(r31)
/* 802355FC  28 00 00 02 */	cmplwi r0, 2
/* 80235600  40 82 00 18 */	bne lbl_80235618
/* 80235604  88 1F 01 A1 */	lbz r0, 0x1a1(r31)
/* 80235608  28 00 00 03 */	cmplwi r0, 3
/* 8023560C  40 82 00 0C */	bne lbl_80235618
/* 80235610  3B 60 00 01 */	li r27, 1
/* 80235614  48 00 00 78 */	b lbl_8023568C
lbl_80235618:
/* 80235618  7F E3 FB 78 */	mr r3, r31
/* 8023561C  48 00 28 3D */	bl getSelectCursorPosLocal__12dMsgObject_cFv
/* 80235620  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80235624  28 00 00 FF */	cmplwi r0, 0xff
/* 80235628  41 82 00 38 */	beq lbl_80235660
/* 8023562C  7F E3 FB 78 */	mr r3, r31
/* 80235630  48 00 28 29 */	bl getSelectCursorPosLocal__12dMsgObject_cFv
/* 80235634  38 03 00 01 */	addi r0, r3, 1
/* 80235638  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8023563C  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 80235640  38 80 00 02 */	li r4, 2
/* 80235644  7F 86 E3 78 */	mr r6, r28
/* 80235648  81 83 00 00 */	lwz r12, 0(r3)
/* 8023564C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80235650  7D 89 03 A6 */	mtctr r12
/* 80235654  4E 80 04 21 */	bctrl 
/* 80235658  7C 7B 1B 78 */	mr r27, r3
/* 8023565C  48 00 00 30 */	b lbl_8023568C
lbl_80235660:
/* 80235660  7F E3 FB 78 */	mr r3, r31
/* 80235664  48 00 27 F5 */	bl getSelectCursorPosLocal__12dMsgObject_cFv
/* 80235668  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8023566C  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 80235670  38 80 00 02 */	li r4, 2
/* 80235674  7F 86 E3 78 */	mr r6, r28
/* 80235678  81 83 00 00 */	lwz r12, 0(r3)
/* 8023567C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80235680  7D 89 03 A6 */	mtctr r12
/* 80235684  4E 80 04 21 */	bctrl 
/* 80235688  7C 7B 1B 78 */	mr r27, r3
lbl_8023568C:
/* 8023568C  38 00 00 00 */	li r0, 0
/* 80235690  98 1D 12 4D */	stb r0, 0x124d(r29)
/* 80235694  48 00 00 FC */	b lbl_80235790
lbl_80235698:
/* 80235698  7F E3 FB 78 */	mr r3, r31
/* 8023569C  48 00 12 5D */	bl getStatusLocal__12dMsgObject_cFv
/* 802356A0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 802356A4  28 00 00 09 */	cmplwi r0, 9
/* 802356A8  40 82 00 D0 */	bne lbl_80235778
/* 802356AC  7F E3 FB 78 */	mr r3, r31
/* 802356B0  48 00 1A 4D */	bl isMidonaMessage__12dMsgObject_cFv
/* 802356B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802356B8  41 82 00 68 */	beq lbl_80235720
/* 802356BC  88 1F 01 A3 */	lbz r0, 0x1a3(r31)
/* 802356C0  28 00 00 00 */	cmplwi r0, 0
/* 802356C4  41 82 00 5C */	beq lbl_80235720
/* 802356C8  28 00 00 02 */	cmplwi r0, 2
/* 802356CC  40 82 00 48 */	bne lbl_80235714
/* 802356D0  88 1F 01 A1 */	lbz r0, 0x1a1(r31)
/* 802356D4  28 00 00 04 */	cmplwi r0, 4
/* 802356D8  40 82 00 3C */	bne lbl_80235714
/* 802356DC  3B 60 00 01 */	li r27, 1
/* 802356E0  48 00 00 8C */	b lbl_8023576C
/* 802356E4  48 00 00 30 */	b lbl_80235714
lbl_802356E8:
/* 802356E8  7F E3 FB 78 */	mr r3, r31
/* 802356EC  48 00 27 6D */	bl getSelectCursorPosLocal__12dMsgObject_cFv
/* 802356F0  7C 65 1B 78 */	mr r5, r3
/* 802356F4  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 802356F8  38 80 00 03 */	li r4, 3
/* 802356FC  7F 86 E3 78 */	mr r6, r28
/* 80235700  81 83 00 00 */	lwz r12, 0(r3)
/* 80235704  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80235708  7D 89 03 A6 */	mtctr r12
/* 8023570C  4E 80 04 21 */	bctrl 
/* 80235710  7C 7B 1B 78 */	mr r27, r3
lbl_80235714:
/* 80235714  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80235718  41 82 FF D0 */	beq lbl_802356E8
/* 8023571C  48 00 00 50 */	b lbl_8023576C
lbl_80235720:
/* 80235720  88 1F 01 A3 */	lbz r0, 0x1a3(r31)
/* 80235724  28 00 00 02 */	cmplwi r0, 2
/* 80235728  40 82 00 18 */	bne lbl_80235740
/* 8023572C  88 1F 01 A1 */	lbz r0, 0x1a1(r31)
/* 80235730  28 00 00 04 */	cmplwi r0, 4
/* 80235734  40 82 00 0C */	bne lbl_80235740
/* 80235738  3B 60 00 01 */	li r27, 1
/* 8023573C  48 00 00 30 */	b lbl_8023576C
lbl_80235740:
/* 80235740  7F E3 FB 78 */	mr r3, r31
/* 80235744  48 00 27 15 */	bl getSelectCursorPosLocal__12dMsgObject_cFv
/* 80235748  7C 65 1B 78 */	mr r5, r3
/* 8023574C  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 80235750  38 80 00 03 */	li r4, 3
/* 80235754  7F 86 E3 78 */	mr r6, r28
/* 80235758  81 83 00 00 */	lwz r12, 0(r3)
/* 8023575C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80235760  7D 89 03 A6 */	mtctr r12
/* 80235764  4E 80 04 21 */	bctrl 
/* 80235768  7C 7B 1B 78 */	mr r27, r3
lbl_8023576C:
/* 8023576C  38 00 00 00 */	li r0, 0
/* 80235770  98 1D 12 4D */	stb r0, 0x124d(r29)
/* 80235774  48 00 00 1C */	b lbl_80235790
lbl_80235778:
/* 80235778  7F E3 FB 78 */	mr r3, r31
/* 8023577C  48 00 11 7D */	bl getStatusLocal__12dMsgObject_cFv
/* 80235780  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80235784  28 00 00 14 */	cmplwi r0, 0x14
/* 80235788  40 82 00 08 */	bne lbl_80235790
/* 8023578C  3B 60 00 01 */	li r27, 1
lbl_80235790:
/* 80235790  88 1D 12 44 */	lbz r0, 0x1244(r29)
/* 80235794  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 80235798  98 03 00 FA */	stb r0, 0xfa(r3)
/* 8023579C  7F E3 FB 78 */	mr r3, r31
/* 802357A0  48 00 12 39 */	bl isSend__12dMsgObject_cFv
/* 802357A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802357A8  41 82 00 BC */	beq lbl_80235864
/* 802357AC  88 1F 01 A3 */	lbz r0, 0x1a3(r31)
/* 802357B0  28 00 00 00 */	cmplwi r0, 0
/* 802357B4  41 82 00 B0 */	beq lbl_80235864
/* 802357B8  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 802357BC  41 82 00 A8 */	beq lbl_80235864
/* 802357C0  38 00 00 00 */	li r0, 0
/* 802357C4  98 1F 01 A3 */	stb r0, 0x1a3(r31)
/* 802357C8  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 802357CC  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 802357D0  41 82 00 10 */	beq lbl_802357E0
/* 802357D4  38 00 00 02 */	li r0, 2
/* 802357D8  98 1F 01 A2 */	stb r0, 0x1a2(r31)
/* 802357DC  48 00 00 0C */	b lbl_802357E8
lbl_802357E0:
/* 802357E0  38 00 00 01 */	li r0, 1
/* 802357E4  98 1F 01 A2 */	stb r0, 0x1a2(r31)
lbl_802357E8:
/* 802357E8  38 00 00 00 */	li r0, 0
/* 802357EC  98 1F 01 A1 */	stb r0, 0x1a1(r31)
/* 802357F0  B0 1F 01 6A */	sth r0, 0x16a(r31)
/* 802357F4  7F E3 FB 78 */	mr r3, r31
/* 802357F8  48 00 11 01 */	bl getStatusLocal__12dMsgObject_cFv
/* 802357FC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80235800  28 00 00 14 */	cmplwi r0, 0x14
/* 80235804  40 82 00 1C */	bne lbl_80235820
/* 80235808  38 00 00 01 */	li r0, 1
/* 8023580C  98 1F 01 99 */	stb r0, 0x199(r31)
/* 80235810  7F E3 FB 78 */	mr r3, r31
/* 80235814  38 80 00 0E */	li r4, 0xe
/* 80235818  48 00 10 CD */	bl setStatusLocal__12dMsgObject_cFUs
/* 8023581C  48 00 00 10 */	b lbl_8023582C
lbl_80235820:
/* 80235820  7F E3 FB 78 */	mr r3, r31
/* 80235824  38 80 00 18 */	li r4, 0x18
/* 80235828  48 00 10 BD */	bl setStatusLocal__12dMsgObject_cFUs
lbl_8023582C:
/* 8023582C  4B FE 91 A5 */	bl dMeter2Info_set2DVibration__Fv
/* 80235830  38 00 00 64 */	li r0, 0x64
/* 80235834  90 01 00 08 */	stw r0, 8(r1)
/* 80235838  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8023583C  38 81 00 08 */	addi r4, r1, 8
/* 80235840  38 A0 00 00 */	li r5, 0
/* 80235844  38 C0 00 00 */	li r6, 0
/* 80235848  38 E0 00 00 */	li r7, 0
/* 8023584C  C0 22 B0 C0 */	lfs f1, lit_4084(r2)
/* 80235850  FC 40 08 90 */	fmr f2, f1
/* 80235854  C0 62 B1 10 */	lfs f3, lit_4145(r2)
/* 80235858  FC 80 18 90 */	fmr f4, f3
/* 8023585C  39 00 00 00 */	li r8, 0
/* 80235860  48 07 61 25 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80235864:
/* 80235864  39 61 00 30 */	addi r11, r1, 0x30
/* 80235868  48 12 C9 B9 */	bl _restgpr_27
/* 8023586C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80235870  7C 08 03 A6 */	mtlr r0
/* 80235874  38 21 00 30 */	addi r1, r1, 0x30
/* 80235878  4E 80 00 20 */	blr 
