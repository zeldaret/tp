lbl_8021350C:
/* 8021350C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80213510  7C 08 02 A6 */	mflr r0
/* 80213514  90 01 00 14 */	stw r0, 0x14(r1)
/* 80213518  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021351C  93 C1 00 08 */	stw r30, 8(r1)
/* 80213520  7C 7F 1B 78 */	mr r31, r3
/* 80213524  38 60 00 6C */	li r3, 0x6c
/* 80213528  48 0B B7 25 */	bl __nw__FUl
/* 8021352C  7C 60 1B 79 */	or. r0, r3, r3
/* 80213530  41 82 00 24 */	beq lbl_80213554
/* 80213534  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80213538  3C A0 6A 69 */	lis r5, 0x6A69 /* 0x6A695F6E@ha */
/* 8021353C  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x6A695F6E@l */
/* 80213540  38 A0 6A 75 */	li r5, 0x6a75
/* 80213544  38 E0 00 02 */	li r7, 2
/* 80213548  39 00 00 00 */	li r8, 0
/* 8021354C  48 04 04 39 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80213550  7C 60 1B 78 */	mr r0, r3
lbl_80213554:
/* 80213554  90 1F 03 68 */	stw r0, 0x368(r31)
/* 80213558  4B E0 14 99 */	bl mDoExt_getMesgFont__Fv
/* 8021355C  7C 7E 1B 78 */	mr r30, r3
/* 80213560  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80213564  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7530@ha */
/* 80213568  38 C4 75 30 */	addi r6, r4, 0x7530 /* 0x5F6A7530@l */
/* 8021356C  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 80213570  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 80213574  81 83 00 00 */	lwz r12, 0(r3)
/* 80213578  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8021357C  7D 89 03 A6 */	mtctr r12
/* 80213580  4E 80 04 21 */	bctrl 
/* 80213584  7F C4 F3 78 */	mr r4, r30
/* 80213588  81 83 00 00 */	lwz r12, 0(r3)
/* 8021358C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80213590  7D 89 03 A6 */	mtctr r12
/* 80213594  4E 80 04 21 */	bctrl 
/* 80213598  4B E0 14 59 */	bl mDoExt_getMesgFont__Fv
/* 8021359C  7C 7E 1B 78 */	mr r30, r3
/* 802135A0  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 802135A4  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7531@ha */
/* 802135A8  38 C4 75 31 */	addi r6, r4, 0x7531 /* 0x5F6A7531@l */
/* 802135AC  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 802135B0  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 802135B4  81 83 00 00 */	lwz r12, 0(r3)
/* 802135B8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802135BC  7D 89 03 A6 */	mtctr r12
/* 802135C0  4E 80 04 21 */	bctrl 
/* 802135C4  7F C4 F3 78 */	mr r4, r30
/* 802135C8  81 83 00 00 */	lwz r12, 0(r3)
/* 802135CC  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 802135D0  7D 89 03 A6 */	mtctr r12
/* 802135D4  4E 80 04 21 */	bctrl 
/* 802135D8  4B E0 14 19 */	bl mDoExt_getMesgFont__Fv
/* 802135DC  7C 7E 1B 78 */	mr r30, r3
/* 802135E0  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 802135E4  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7532@ha */
/* 802135E8  38 C4 75 32 */	addi r6, r4, 0x7532 /* 0x5F6A7532@l */
/* 802135EC  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 802135F0  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 802135F4  81 83 00 00 */	lwz r12, 0(r3)
/* 802135F8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802135FC  7D 89 03 A6 */	mtctr r12
/* 80213600  4E 80 04 21 */	bctrl 
/* 80213604  7F C4 F3 78 */	mr r4, r30
/* 80213608  81 83 00 00 */	lwz r12, 0(r3)
/* 8021360C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80213610  7D 89 03 A6 */	mtctr r12
/* 80213614  4E 80 04 21 */	bctrl 
/* 80213618  4B E0 13 D9 */	bl mDoExt_getMesgFont__Fv
/* 8021361C  7C 7E 1B 78 */	mr r30, r3
/* 80213620  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80213624  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7533@ha */
/* 80213628  38 C4 75 33 */	addi r6, r4, 0x7533 /* 0x5F6A7533@l */
/* 8021362C  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 80213630  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 80213634  81 83 00 00 */	lwz r12, 0(r3)
/* 80213638  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8021363C  7D 89 03 A6 */	mtctr r12
/* 80213640  4E 80 04 21 */	bctrl 
/* 80213644  7F C4 F3 78 */	mr r4, r30
/* 80213648  81 83 00 00 */	lwz r12, 0(r3)
/* 8021364C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80213650  7D 89 03 A6 */	mtctr r12
/* 80213654  4E 80 04 21 */	bctrl 
/* 80213658  4B E0 13 99 */	bl mDoExt_getMesgFont__Fv
/* 8021365C  7C 7E 1B 78 */	mr r30, r3
/* 80213660  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80213664  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7534@ha */
/* 80213668  38 C4 75 34 */	addi r6, r4, 0x7534 /* 0x5F6A7534@l */
/* 8021366C  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 80213670  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 80213674  81 83 00 00 */	lwz r12, 0(r3)
/* 80213678  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8021367C  7D 89 03 A6 */	mtctr r12
/* 80213680  4E 80 04 21 */	bctrl 
/* 80213684  7F C4 F3 78 */	mr r4, r30
/* 80213688  81 83 00 00 */	lwz r12, 0(r3)
/* 8021368C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80213690  7D 89 03 A6 */	mtctr r12
/* 80213694  4E 80 04 21 */	bctrl 
/* 80213698  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 8021369C  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7530@ha */
/* 802136A0  38 C4 75 30 */	addi r6, r4, 0x7530 /* 0x5F6A7530@l */
/* 802136A4  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 802136A8  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 802136AC  81 83 00 00 */	lwz r12, 0(r3)
/* 802136B0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802136B4  7D 89 03 A6 */	mtctr r12
/* 802136B8  4E 80 04 21 */	bctrl 
/* 802136BC  38 80 00 40 */	li r4, 0x40
/* 802136C0  3C A0 80 3A */	lis r5, d_meter_d_meter2_draw__stringBase0@ha
/* 802136C4  38 A5 88 D0 */	addi r5, r5, d_meter_d_meter2_draw__stringBase0@l
/* 802136C8  38 A5 00 EF */	addi r5, r5, 0xef
/* 802136CC  4C C6 31 82 */	crclr 6
/* 802136D0  48 0E D0 7D */	bl setString__10J2DTextBoxFsPCce
/* 802136D4  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 802136D8  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7531@ha */
/* 802136DC  38 C4 75 31 */	addi r6, r4, 0x7531 /* 0x5F6A7531@l */
/* 802136E0  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 802136E4  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 802136E8  81 83 00 00 */	lwz r12, 0(r3)
/* 802136EC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802136F0  7D 89 03 A6 */	mtctr r12
/* 802136F4  4E 80 04 21 */	bctrl 
/* 802136F8  38 80 00 40 */	li r4, 0x40
/* 802136FC  3C A0 80 3A */	lis r5, d_meter_d_meter2_draw__stringBase0@ha
/* 80213700  38 A5 88 D0 */	addi r5, r5, d_meter_d_meter2_draw__stringBase0@l
/* 80213704  38 A5 00 EF */	addi r5, r5, 0xef
/* 80213708  4C C6 31 82 */	crclr 6
/* 8021370C  48 0E D0 41 */	bl setString__10J2DTextBoxFsPCce
/* 80213710  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80213714  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7532@ha */
/* 80213718  38 C4 75 32 */	addi r6, r4, 0x7532 /* 0x5F6A7532@l */
/* 8021371C  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 80213720  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 80213724  81 83 00 00 */	lwz r12, 0(r3)
/* 80213728  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8021372C  7D 89 03 A6 */	mtctr r12
/* 80213730  4E 80 04 21 */	bctrl 
/* 80213734  38 80 00 40 */	li r4, 0x40
/* 80213738  3C A0 80 3A */	lis r5, d_meter_d_meter2_draw__stringBase0@ha
/* 8021373C  38 A5 88 D0 */	addi r5, r5, d_meter_d_meter2_draw__stringBase0@l
/* 80213740  38 A5 00 EF */	addi r5, r5, 0xef
/* 80213744  4C C6 31 82 */	crclr 6
/* 80213748  48 0E D0 05 */	bl setString__10J2DTextBoxFsPCce
/* 8021374C  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80213750  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7533@ha */
/* 80213754  38 C4 75 33 */	addi r6, r4, 0x7533 /* 0x5F6A7533@l */
/* 80213758  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 8021375C  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 80213760  81 83 00 00 */	lwz r12, 0(r3)
/* 80213764  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80213768  7D 89 03 A6 */	mtctr r12
/* 8021376C  4E 80 04 21 */	bctrl 
/* 80213770  38 80 00 40 */	li r4, 0x40
/* 80213774  3C A0 80 3A */	lis r5, d_meter_d_meter2_draw__stringBase0@ha
/* 80213778  38 A5 88 D0 */	addi r5, r5, d_meter_d_meter2_draw__stringBase0@l
/* 8021377C  38 A5 00 EF */	addi r5, r5, 0xef
/* 80213780  4C C6 31 82 */	crclr 6
/* 80213784  48 0E CF C9 */	bl setString__10J2DTextBoxFsPCce
/* 80213788  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 8021378C  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7534@ha */
/* 80213790  38 C4 75 34 */	addi r6, r4, 0x7534 /* 0x5F6A7534@l */
/* 80213794  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 80213798  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 8021379C  81 83 00 00 */	lwz r12, 0(r3)
/* 802137A0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802137A4  7D 89 03 A6 */	mtctr r12
/* 802137A8  4E 80 04 21 */	bctrl 
/* 802137AC  38 80 00 40 */	li r4, 0x40
/* 802137B0  3C A0 80 3A */	lis r5, d_meter_d_meter2_draw__stringBase0@ha
/* 802137B4  38 A5 88 D0 */	addi r5, r5, d_meter_d_meter2_draw__stringBase0@l
/* 802137B8  38 A5 00 EF */	addi r5, r5, 0xef
/* 802137BC  4C C6 31 82 */	crclr 6
/* 802137C0  48 0E CF 8D */	bl setString__10J2DTextBoxFsPCce
/* 802137C4  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 802137C8  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7530@ha */
/* 802137CC  38 C4 75 30 */	addi r6, r4, 0x7530 /* 0x5F6A7530@l */
/* 802137D0  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 802137D4  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 802137D8  81 83 00 00 */	lwz r12, 0(r3)
/* 802137DC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802137E0  7D 89 03 A6 */	mtctr r12
/* 802137E4  4E 80 04 21 */	bctrl 
/* 802137E8  48 0E CE 71 */	bl getStringPtr__10J2DTextBoxCFv
/* 802137EC  7C 65 1B 78 */	mr r5, r3
/* 802137F0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 802137F4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 802137F8  38 80 00 61 */	li r4, 0x61
/* 802137FC  38 C0 00 00 */	li r6, 0
/* 80213800  48 00 8A 51 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80213804  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80213808  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7531@ha */
/* 8021380C  38 C4 75 31 */	addi r6, r4, 0x7531 /* 0x5F6A7531@l */
/* 80213810  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 80213814  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 80213818  81 83 00 00 */	lwz r12, 0(r3)
/* 8021381C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80213820  7D 89 03 A6 */	mtctr r12
/* 80213824  4E 80 04 21 */	bctrl 
/* 80213828  48 0E CE 31 */	bl getStringPtr__10J2DTextBoxCFv
/* 8021382C  7C 65 1B 78 */	mr r5, r3
/* 80213830  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80213834  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80213838  38 80 00 61 */	li r4, 0x61
/* 8021383C  38 C0 00 00 */	li r6, 0
/* 80213840  48 00 8A 11 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80213844  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80213848  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7532@ha */
/* 8021384C  38 C4 75 32 */	addi r6, r4, 0x7532 /* 0x5F6A7532@l */
/* 80213850  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 80213854  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 80213858  81 83 00 00 */	lwz r12, 0(r3)
/* 8021385C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80213860  7D 89 03 A6 */	mtctr r12
/* 80213864  4E 80 04 21 */	bctrl 
/* 80213868  48 0E CD F1 */	bl getStringPtr__10J2DTextBoxCFv
/* 8021386C  7C 65 1B 78 */	mr r5, r3
/* 80213870  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80213874  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80213878  38 80 00 61 */	li r4, 0x61
/* 8021387C  38 C0 00 00 */	li r6, 0
/* 80213880  48 00 89 D1 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80213884  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80213888  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7533@ha */
/* 8021388C  38 C4 75 33 */	addi r6, r4, 0x7533 /* 0x5F6A7533@l */
/* 80213890  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 80213894  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 80213898  81 83 00 00 */	lwz r12, 0(r3)
/* 8021389C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802138A0  7D 89 03 A6 */	mtctr r12
/* 802138A4  4E 80 04 21 */	bctrl 
/* 802138A8  48 0E CD B1 */	bl getStringPtr__10J2DTextBoxCFv
/* 802138AC  7C 65 1B 78 */	mr r5, r3
/* 802138B0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 802138B4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 802138B8  38 80 00 61 */	li r4, 0x61
/* 802138BC  38 C0 00 00 */	li r6, 0
/* 802138C0  48 00 89 91 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 802138C4  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 802138C8  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7534@ha */
/* 802138CC  38 C4 75 34 */	addi r6, r4, 0x7534 /* 0x5F6A7534@l */
/* 802138D0  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 802138D4  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 802138D8  81 83 00 00 */	lwz r12, 0(r3)
/* 802138DC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802138E0  7D 89 03 A6 */	mtctr r12
/* 802138E4  4E 80 04 21 */	bctrl 
/* 802138E8  48 0E CD 71 */	bl getStringPtr__10J2DTextBoxCFv
/* 802138EC  7C 65 1B 78 */	mr r5, r3
/* 802138F0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 802138F4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 802138F8  38 80 00 61 */	li r4, 0x61
/* 802138FC  38 C0 00 00 */	li r6, 0
/* 80213900  48 00 89 51 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80213904  4B E0 10 ED */	bl mDoExt_getMesgFont__Fv
/* 80213908  7C 7E 1B 78 */	mr r30, r3
/* 8021390C  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80213910  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7535@ha */
/* 80213914  38 C4 75 35 */	addi r6, r4, 0x7535 /* 0x5F6A7535@l */
/* 80213918  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 8021391C  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 80213920  81 83 00 00 */	lwz r12, 0(r3)
/* 80213924  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80213928  7D 89 03 A6 */	mtctr r12
/* 8021392C  4E 80 04 21 */	bctrl 
/* 80213930  7F C4 F3 78 */	mr r4, r30
/* 80213934  81 83 00 00 */	lwz r12, 0(r3)
/* 80213938  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8021393C  7D 89 03 A6 */	mtctr r12
/* 80213940  4E 80 04 21 */	bctrl 
/* 80213944  4B E0 10 AD */	bl mDoExt_getMesgFont__Fv
/* 80213948  7C 7E 1B 78 */	mr r30, r3
/* 8021394C  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80213950  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7536@ha */
/* 80213954  38 C4 75 36 */	addi r6, r4, 0x7536 /* 0x5F6A7536@l */
/* 80213958  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 8021395C  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 80213960  81 83 00 00 */	lwz r12, 0(r3)
/* 80213964  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80213968  7D 89 03 A6 */	mtctr r12
/* 8021396C  4E 80 04 21 */	bctrl 
/* 80213970  7F C4 F3 78 */	mr r4, r30
/* 80213974  81 83 00 00 */	lwz r12, 0(r3)
/* 80213978  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8021397C  7D 89 03 A6 */	mtctr r12
/* 80213980  4E 80 04 21 */	bctrl 
/* 80213984  4B E0 10 6D */	bl mDoExt_getMesgFont__Fv
/* 80213988  7C 7E 1B 78 */	mr r30, r3
/* 8021398C  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80213990  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7537@ha */
/* 80213994  38 C4 75 37 */	addi r6, r4, 0x7537 /* 0x5F6A7537@l */
/* 80213998  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 8021399C  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 802139A0  81 83 00 00 */	lwz r12, 0(r3)
/* 802139A4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802139A8  7D 89 03 A6 */	mtctr r12
/* 802139AC  4E 80 04 21 */	bctrl 
/* 802139B0  7F C4 F3 78 */	mr r4, r30
/* 802139B4  81 83 00 00 */	lwz r12, 0(r3)
/* 802139B8  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 802139BC  7D 89 03 A6 */	mtctr r12
/* 802139C0  4E 80 04 21 */	bctrl 
/* 802139C4  4B E0 10 2D */	bl mDoExt_getMesgFont__Fv
/* 802139C8  7C 7E 1B 78 */	mr r30, r3
/* 802139CC  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 802139D0  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7538@ha */
/* 802139D4  38 C4 75 38 */	addi r6, r4, 0x7538 /* 0x5F6A7538@l */
/* 802139D8  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 802139DC  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 802139E0  81 83 00 00 */	lwz r12, 0(r3)
/* 802139E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802139E8  7D 89 03 A6 */	mtctr r12
/* 802139EC  4E 80 04 21 */	bctrl 
/* 802139F0  7F C4 F3 78 */	mr r4, r30
/* 802139F4  81 83 00 00 */	lwz r12, 0(r3)
/* 802139F8  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 802139FC  7D 89 03 A6 */	mtctr r12
/* 80213A00  4E 80 04 21 */	bctrl 
/* 80213A04  4B E0 0F ED */	bl mDoExt_getMesgFont__Fv
/* 80213A08  7C 7E 1B 78 */	mr r30, r3
/* 80213A0C  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80213A10  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7539@ha */
/* 80213A14  38 C4 75 39 */	addi r6, r4, 0x7539 /* 0x5F6A7539@l */
/* 80213A18  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 80213A1C  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 80213A20  81 83 00 00 */	lwz r12, 0(r3)
/* 80213A24  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80213A28  7D 89 03 A6 */	mtctr r12
/* 80213A2C  4E 80 04 21 */	bctrl 
/* 80213A30  7F C4 F3 78 */	mr r4, r30
/* 80213A34  81 83 00 00 */	lwz r12, 0(r3)
/* 80213A38  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80213A3C  7D 89 03 A6 */	mtctr r12
/* 80213A40  4E 80 04 21 */	bctrl 
/* 80213A44  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80213A48  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7535@ha */
/* 80213A4C  38 C4 75 35 */	addi r6, r4, 0x7535 /* 0x5F6A7535@l */
/* 80213A50  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 80213A54  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 80213A58  81 83 00 00 */	lwz r12, 0(r3)
/* 80213A5C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80213A60  7D 89 03 A6 */	mtctr r12
/* 80213A64  4E 80 04 21 */	bctrl 
/* 80213A68  38 80 00 40 */	li r4, 0x40
/* 80213A6C  3C A0 80 3A */	lis r5, d_meter_d_meter2_draw__stringBase0@ha
/* 80213A70  38 A5 88 D0 */	addi r5, r5, d_meter_d_meter2_draw__stringBase0@l
/* 80213A74  38 A5 00 EF */	addi r5, r5, 0xef
/* 80213A78  4C C6 31 82 */	crclr 6
/* 80213A7C  48 0E CC D1 */	bl setString__10J2DTextBoxFsPCce
/* 80213A80  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80213A84  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7536@ha */
/* 80213A88  38 C4 75 36 */	addi r6, r4, 0x7536 /* 0x5F6A7536@l */
/* 80213A8C  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 80213A90  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 80213A94  81 83 00 00 */	lwz r12, 0(r3)
/* 80213A98  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80213A9C  7D 89 03 A6 */	mtctr r12
/* 80213AA0  4E 80 04 21 */	bctrl 
/* 80213AA4  38 80 00 40 */	li r4, 0x40
/* 80213AA8  3C A0 80 3A */	lis r5, d_meter_d_meter2_draw__stringBase0@ha
/* 80213AAC  38 A5 88 D0 */	addi r5, r5, d_meter_d_meter2_draw__stringBase0@l
/* 80213AB0  38 A5 00 EF */	addi r5, r5, 0xef
/* 80213AB4  4C C6 31 82 */	crclr 6
/* 80213AB8  48 0E CC 95 */	bl setString__10J2DTextBoxFsPCce
/* 80213ABC  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80213AC0  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7537@ha */
/* 80213AC4  38 C4 75 37 */	addi r6, r4, 0x7537 /* 0x5F6A7537@l */
/* 80213AC8  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 80213ACC  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 80213AD0  81 83 00 00 */	lwz r12, 0(r3)
/* 80213AD4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80213AD8  7D 89 03 A6 */	mtctr r12
/* 80213ADC  4E 80 04 21 */	bctrl 
/* 80213AE0  38 80 00 40 */	li r4, 0x40
/* 80213AE4  3C A0 80 3A */	lis r5, d_meter_d_meter2_draw__stringBase0@ha
/* 80213AE8  38 A5 88 D0 */	addi r5, r5, d_meter_d_meter2_draw__stringBase0@l
/* 80213AEC  38 A5 00 EF */	addi r5, r5, 0xef
/* 80213AF0  4C C6 31 82 */	crclr 6
/* 80213AF4  48 0E CC 59 */	bl setString__10J2DTextBoxFsPCce
/* 80213AF8  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80213AFC  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7538@ha */
/* 80213B00  38 C4 75 38 */	addi r6, r4, 0x7538 /* 0x5F6A7538@l */
/* 80213B04  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 80213B08  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 80213B0C  81 83 00 00 */	lwz r12, 0(r3)
/* 80213B10  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80213B14  7D 89 03 A6 */	mtctr r12
/* 80213B18  4E 80 04 21 */	bctrl 
/* 80213B1C  38 80 00 40 */	li r4, 0x40
/* 80213B20  3C A0 80 3A */	lis r5, d_meter_d_meter2_draw__stringBase0@ha
/* 80213B24  38 A5 88 D0 */	addi r5, r5, d_meter_d_meter2_draw__stringBase0@l
/* 80213B28  38 A5 00 EF */	addi r5, r5, 0xef
/* 80213B2C  4C C6 31 82 */	crclr 6
/* 80213B30  48 0E CC 1D */	bl setString__10J2DTextBoxFsPCce
/* 80213B34  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80213B38  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7539@ha */
/* 80213B3C  38 C4 75 39 */	addi r6, r4, 0x7539 /* 0x5F6A7539@l */
/* 80213B40  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 80213B44  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 80213B48  81 83 00 00 */	lwz r12, 0(r3)
/* 80213B4C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80213B50  7D 89 03 A6 */	mtctr r12
/* 80213B54  4E 80 04 21 */	bctrl 
/* 80213B58  38 80 00 40 */	li r4, 0x40
/* 80213B5C  3C A0 80 3A */	lis r5, d_meter_d_meter2_draw__stringBase0@ha
/* 80213B60  38 A5 88 D0 */	addi r5, r5, d_meter_d_meter2_draw__stringBase0@l
/* 80213B64  38 A5 00 EF */	addi r5, r5, 0xef
/* 80213B68  4C C6 31 82 */	crclr 6
/* 80213B6C  48 0E CB E1 */	bl setString__10J2DTextBoxFsPCce
/* 80213B70  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80213B74  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7535@ha */
/* 80213B78  38 C4 75 35 */	addi r6, r4, 0x7535 /* 0x5F6A7535@l */
/* 80213B7C  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 80213B80  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 80213B84  81 83 00 00 */	lwz r12, 0(r3)
/* 80213B88  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80213B8C  7D 89 03 A6 */	mtctr r12
/* 80213B90  4E 80 04 21 */	bctrl 
/* 80213B94  48 0E CA C5 */	bl getStringPtr__10J2DTextBoxCFv
/* 80213B98  7C 65 1B 78 */	mr r5, r3
/* 80213B9C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80213BA0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80213BA4  38 80 00 62 */	li r4, 0x62
/* 80213BA8  38 C0 00 00 */	li r6, 0
/* 80213BAC  48 00 86 A5 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80213BB0  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80213BB4  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7536@ha */
/* 80213BB8  38 C4 75 36 */	addi r6, r4, 0x7536 /* 0x5F6A7536@l */
/* 80213BBC  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 80213BC0  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 80213BC4  81 83 00 00 */	lwz r12, 0(r3)
/* 80213BC8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80213BCC  7D 89 03 A6 */	mtctr r12
/* 80213BD0  4E 80 04 21 */	bctrl 
/* 80213BD4  48 0E CA 85 */	bl getStringPtr__10J2DTextBoxCFv
/* 80213BD8  7C 65 1B 78 */	mr r5, r3
/* 80213BDC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80213BE0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80213BE4  38 80 00 62 */	li r4, 0x62
/* 80213BE8  38 C0 00 00 */	li r6, 0
/* 80213BEC  48 00 86 65 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80213BF0  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80213BF4  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7537@ha */
/* 80213BF8  38 C4 75 37 */	addi r6, r4, 0x7537 /* 0x5F6A7537@l */
/* 80213BFC  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 80213C00  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 80213C04  81 83 00 00 */	lwz r12, 0(r3)
/* 80213C08  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80213C0C  7D 89 03 A6 */	mtctr r12
/* 80213C10  4E 80 04 21 */	bctrl 
/* 80213C14  48 0E CA 45 */	bl getStringPtr__10J2DTextBoxCFv
/* 80213C18  7C 65 1B 78 */	mr r5, r3
/* 80213C1C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80213C20  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80213C24  38 80 00 62 */	li r4, 0x62
/* 80213C28  38 C0 00 00 */	li r6, 0
/* 80213C2C  48 00 86 25 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80213C30  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80213C34  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7538@ha */
/* 80213C38  38 C4 75 38 */	addi r6, r4, 0x7538 /* 0x5F6A7538@l */
/* 80213C3C  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 80213C40  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 80213C44  81 83 00 00 */	lwz r12, 0(r3)
/* 80213C48  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80213C4C  7D 89 03 A6 */	mtctr r12
/* 80213C50  4E 80 04 21 */	bctrl 
/* 80213C54  48 0E CA 05 */	bl getStringPtr__10J2DTextBoxCFv
/* 80213C58  7C 65 1B 78 */	mr r5, r3
/* 80213C5C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80213C60  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80213C64  38 80 00 62 */	li r4, 0x62
/* 80213C68  38 C0 00 00 */	li r6, 0
/* 80213C6C  48 00 85 E5 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80213C70  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80213C74  3C 80 5F 6A */	lis r4, 0x5F6A /* 0x5F6A7539@ha */
/* 80213C78  38 C4 75 39 */	addi r6, r4, 0x7539 /* 0x5F6A7539@l */
/* 80213C7C  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6E74@ha */
/* 80213C80  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x636F6E74@l */
/* 80213C84  81 83 00 00 */	lwz r12, 0(r3)
/* 80213C88  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80213C8C  7D 89 03 A6 */	mtctr r12
/* 80213C90  4E 80 04 21 */	bctrl 
/* 80213C94  48 0E C9 C5 */	bl getStringPtr__10J2DTextBoxCFv
/* 80213C98  7C 65 1B 78 */	mr r5, r3
/* 80213C9C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80213CA0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80213CA4  38 80 00 62 */	li r4, 0x62
/* 80213CA8  38 C0 00 00 */	li r6, 0
/* 80213CAC  48 00 85 A5 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80213CB0  80 7F 03 68 */	lwz r3, 0x368(r31)
/* 80213CB4  C0 22 AE 80 */	lfs f1, lit_4182(r2)
/* 80213CB8  48 04 1B 19 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80213CBC  7F E3 FB 78 */	mr r3, r31
/* 80213CC0  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 80213CC4  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 80213CC8  C0 24 04 00 */	lfs f1, 0x400(r4)
/* 80213CCC  C0 44 04 04 */	lfs f2, 0x404(r4)
/* 80213CD0  48 00 45 85 */	bl drawButtonCross__13dMeter2Draw_cFff
/* 80213CD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80213CD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80213CDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80213CE0  7C 08 03 A6 */	mtlr r0
/* 80213CE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80213CE8  4E 80 00 20 */	blr 
