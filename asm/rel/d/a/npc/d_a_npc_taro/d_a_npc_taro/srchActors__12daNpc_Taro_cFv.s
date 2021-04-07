lbl_8056767C:
/* 8056767C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80567680  7C 08 02 A6 */	mflr r0
/* 80567684  90 01 00 24 */	stw r0, 0x24(r1)
/* 80567688  39 61 00 20 */	addi r11, r1, 0x20
/* 8056768C  4B DF AB 51 */	bl _savegpr_29
/* 80567690  7C 7F 1B 78 */	mr r31, r3
/* 80567694  88 03 10 C4 */	lbz r0, 0x10c4(r3)
/* 80567698  28 00 00 0F */	cmplwi r0, 0xf
/* 8056769C  41 81 03 3C */	bgt lbl_805679D8
/* 805676A0  3C 60 80 57 */	lis r3, lit_5298@ha /* 0x80572D1C@ha */
/* 805676A4  38 63 2D 1C */	addi r3, r3, lit_5298@l /* 0x80572D1C@l */
/* 805676A8  54 00 10 3A */	slwi r0, r0, 2
/* 805676AC  7C 03 00 2E */	lwzx r0, r3, r0
/* 805676B0  7C 09 03 A6 */	mtctr r0
/* 805676B4  4E 80 04 20 */	bctr 
lbl_805676B8:
/* 805676B8  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 805676BC  4B BD E0 4D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805676C0  28 03 00 00 */	cmplwi r3, 0
/* 805676C4  40 82 00 1C */	bne lbl_805676E0
/* 805676C8  7F E3 FB 78 */	mr r3, r31
/* 805676CC  38 80 02 60 */	li r4, 0x260
/* 805676D0  4B BE 47 5D */	bl getNearestActorP__8daNpcT_cFs
/* 805676D4  7C 64 1B 78 */	mr r4, r3
/* 805676D8  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 805676DC  4B BD E0 05 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_805676E0:
/* 805676E0  38 7F 10 D0 */	addi r3, r31, 0x10d0
/* 805676E4  4B BD E0 25 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805676E8  28 03 00 00 */	cmplwi r3, 0
/* 805676EC  40 82 00 1C */	bne lbl_80567708
/* 805676F0  7F E3 FB 78 */	mr r3, r31
/* 805676F4  38 80 02 45 */	li r4, 0x245
/* 805676F8  4B BE 47 35 */	bl getNearestActorP__8daNpcT_cFs
/* 805676FC  7C 64 1B 78 */	mr r4, r3
/* 80567700  38 7F 10 D0 */	addi r3, r31, 0x10d0
/* 80567704  4B BD DF DD */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80567708:
/* 80567708  38 7F 10 D8 */	addi r3, r31, 0x10d8
/* 8056770C  4B BD DF FD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80567710  28 03 00 00 */	cmplwi r3, 0
/* 80567714  40 82 00 1C */	bne lbl_80567730
/* 80567718  7F E3 FB 78 */	mr r3, r31
/* 8056771C  38 80 02 5D */	li r4, 0x25d
/* 80567720  4B BE 47 0D */	bl getNearestActorP__8daNpcT_cFs
/* 80567724  7C 64 1B 78 */	mr r4, r3
/* 80567728  38 7F 10 D8 */	addi r3, r31, 0x10d8
/* 8056772C  4B BD DF B5 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80567730:
/* 80567730  38 7F 10 E0 */	addi r3, r31, 0x10e0
/* 80567734  4B BD DF D5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80567738  28 03 00 00 */	cmplwi r3, 0
/* 8056773C  40 82 02 9C */	bne lbl_805679D8
/* 80567740  7F E3 FB 78 */	mr r3, r31
/* 80567744  38 80 00 04 */	li r4, 4
/* 80567748  38 A0 00 00 */	li r5, 0
/* 8056774C  4B BE 47 99 */	bl getEvtAreaTagP__8daNpcT_cFii
/* 80567750  7C 64 1B 78 */	mr r4, r3
/* 80567754  38 7F 10 E0 */	addi r3, r31, 0x10e0
/* 80567758  4B BD DF 89 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8056775C  48 00 02 7C */	b lbl_805679D8
lbl_80567760:
/* 80567760  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 80567764  4B BD DF A5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80567768  28 03 00 00 */	cmplwi r3, 0
/* 8056776C  40 82 02 6C */	bne lbl_805679D8
/* 80567770  7F E3 FB 78 */	mr r3, r31
/* 80567774  38 80 02 60 */	li r4, 0x260
/* 80567778  4B BE 46 B5 */	bl getNearestActorP__8daNpcT_cFs
/* 8056777C  7C 64 1B 78 */	mr r4, r3
/* 80567780  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 80567784  4B BD DF 5D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80567788  48 00 02 50 */	b lbl_805679D8
lbl_8056778C:
/* 8056778C  38 7F 11 78 */	addi r3, r31, 0x1178
/* 80567790  4B BD DF 79 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80567794  28 03 00 00 */	cmplwi r3, 0
/* 80567798  40 82 02 40 */	bne lbl_805679D8
/* 8056779C  7F E3 FB 78 */	mr r3, r31
/* 805677A0  38 80 02 50 */	li r4, 0x250
/* 805677A4  4B BE 46 89 */	bl getNearestActorP__8daNpcT_cFs
/* 805677A8  7C 64 1B 78 */	mr r4, r3
/* 805677AC  38 7F 11 78 */	addi r3, r31, 0x1178
/* 805677B0  4B BD DF 31 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 805677B4  48 00 02 24 */	b lbl_805679D8
lbl_805677B8:
/* 805677B8  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 805677BC  4B BD DF 4D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805677C0  28 03 00 00 */	cmplwi r3, 0
/* 805677C4  40 82 00 1C */	bne lbl_805677E0
/* 805677C8  7F E3 FB 78 */	mr r3, r31
/* 805677CC  38 80 02 60 */	li r4, 0x260
/* 805677D0  4B BE 46 5D */	bl getNearestActorP__8daNpcT_cFs
/* 805677D4  7C 64 1B 78 */	mr r4, r3
/* 805677D8  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 805677DC  4B BD DF 05 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_805677E0:
/* 805677E0  38 7F 10 D0 */	addi r3, r31, 0x10d0
/* 805677E4  4B BD DF 25 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805677E8  28 03 00 00 */	cmplwi r3, 0
/* 805677EC  40 82 00 1C */	bne lbl_80567808
/* 805677F0  7F E3 FB 78 */	mr r3, r31
/* 805677F4  38 80 02 45 */	li r4, 0x245
/* 805677F8  4B BE 46 35 */	bl getNearestActorP__8daNpcT_cFs
/* 805677FC  7C 64 1B 78 */	mr r4, r3
/* 80567800  38 7F 10 D0 */	addi r3, r31, 0x10d0
/* 80567804  4B BD DE DD */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80567808:
/* 80567808  38 7F 10 D8 */	addi r3, r31, 0x10d8
/* 8056780C  4B BD DE FD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80567810  28 03 00 00 */	cmplwi r3, 0
/* 80567814  40 82 01 C4 */	bne lbl_805679D8
/* 80567818  7F E3 FB 78 */	mr r3, r31
/* 8056781C  38 80 02 5D */	li r4, 0x25d
/* 80567820  4B BE 46 0D */	bl getNearestActorP__8daNpcT_cFs
/* 80567824  7C 64 1B 78 */	mr r4, r3
/* 80567828  38 7F 10 D8 */	addi r3, r31, 0x10d8
/* 8056782C  4B BD DE B5 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80567830  48 00 01 A8 */	b lbl_805679D8
lbl_80567834:
/* 80567834  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 80567838  4B BD DE D1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056783C  28 03 00 00 */	cmplwi r3, 0
/* 80567840  40 82 00 1C */	bne lbl_8056785C
/* 80567844  7F E3 FB 78 */	mr r3, r31
/* 80567848  38 80 02 60 */	li r4, 0x260
/* 8056784C  4B BE 45 E1 */	bl getNearestActorP__8daNpcT_cFs
/* 80567850  7C 64 1B 78 */	mr r4, r3
/* 80567854  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 80567858  4B BD DE 89 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8056785C:
/* 8056785C  3B A0 00 00 */	li r29, 0
lbl_80567860:
/* 80567860  38 1D 00 03 */	addi r0, r29, 3
/* 80567864  54 03 18 38 */	slwi r3, r0, 3
/* 80567868  3B C3 10 C8 */	addi r30, r3, 0x10c8
/* 8056786C  7F DF F2 14 */	add r30, r31, r30
/* 80567870  7F C3 F3 78 */	mr r3, r30
/* 80567874  4B BD DE 95 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80567878  28 03 00 00 */	cmplwi r3, 0
/* 8056787C  40 82 00 20 */	bne lbl_8056789C
/* 80567880  7F E3 FB 78 */	mr r3, r31
/* 80567884  38 80 00 0F */	li r4, 0xf
/* 80567888  7F A5 EB 78 */	mr r5, r29
/* 8056788C  4B BE 46 59 */	bl getEvtAreaTagP__8daNpcT_cFii
/* 80567890  7C 64 1B 78 */	mr r4, r3
/* 80567894  7F C3 F3 78 */	mr r3, r30
/* 80567898  4B BD DE 49 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8056789C:
/* 8056789C  3B BD 00 01 */	addi r29, r29, 1
/* 805678A0  2C 1D 00 10 */	cmpwi r29, 0x10
/* 805678A4  41 80 FF BC */	blt lbl_80567860
/* 805678A8  48 00 01 30 */	b lbl_805679D8
lbl_805678AC:
/* 805678AC  38 7F 10 D0 */	addi r3, r31, 0x10d0
/* 805678B0  4B BD DE 59 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805678B4  28 03 00 00 */	cmplwi r3, 0
/* 805678B8  40 82 01 20 */	bne lbl_805679D8
/* 805678BC  7F E3 FB 78 */	mr r3, r31
/* 805678C0  38 80 02 45 */	li r4, 0x245
/* 805678C4  4B BE 45 69 */	bl getNearestActorP__8daNpcT_cFs
/* 805678C8  7C 64 1B 78 */	mr r4, r3
/* 805678CC  38 7F 10 D0 */	addi r3, r31, 0x10d0
/* 805678D0  4B BD DE 11 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 805678D4  48 00 01 04 */	b lbl_805679D8
lbl_805678D8:
/* 805678D8  38 7F 10 D8 */	addi r3, r31, 0x10d8
/* 805678DC  4B BD DE 2D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805678E0  28 03 00 00 */	cmplwi r3, 0
/* 805678E4  40 82 00 1C */	bne lbl_80567900
/* 805678E8  7F E3 FB 78 */	mr r3, r31
/* 805678EC  38 80 02 5D */	li r4, 0x25d
/* 805678F0  4B BE 45 3D */	bl getNearestActorP__8daNpcT_cFs
/* 805678F4  7C 64 1B 78 */	mr r4, r3
/* 805678F8  38 7F 10 D8 */	addi r3, r31, 0x10d8
/* 805678FC  4B BD DD E5 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80567900:
/* 80567900  38 7F 11 68 */	addi r3, r31, 0x1168
/* 80567904  4B BD DE 05 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80567908  28 03 00 00 */	cmplwi r3, 0
/* 8056790C  40 82 00 CC */	bne lbl_805679D8
/* 80567910  7F E3 FB 78 */	mr r3, r31
/* 80567914  38 80 02 64 */	li r4, 0x264
/* 80567918  4B BE 45 15 */	bl getNearestActorP__8daNpcT_cFs
/* 8056791C  7C 64 1B 78 */	mr r4, r3
/* 80567920  38 7F 11 68 */	addi r3, r31, 0x1168
/* 80567924  4B BD DD BD */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80567928  48 00 00 B0 */	b lbl_805679D8
lbl_8056792C:
/* 8056792C  38 7F 10 E0 */	addi r3, r31, 0x10e0
/* 80567930  4B BD DD D9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80567934  28 03 00 00 */	cmplwi r3, 0
/* 80567938  40 82 00 A0 */	bne lbl_805679D8
/* 8056793C  7F E3 FB 78 */	mr r3, r31
/* 80567940  38 80 00 18 */	li r4, 0x18
/* 80567944  38 A0 00 00 */	li r5, 0
/* 80567948  4B BE 45 9D */	bl getEvtAreaTagP__8daNpcT_cFii
/* 8056794C  7C 64 1B 78 */	mr r4, r3
/* 80567950  38 7F 10 E0 */	addi r3, r31, 0x10e0
/* 80567954  4B BD DD 8D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80567958  48 00 00 80 */	b lbl_805679D8
lbl_8056795C:
/* 8056795C  38 7F 11 70 */	addi r3, r31, 0x1170
/* 80567960  4B BD DD A9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80567964  28 03 00 00 */	cmplwi r3, 0
/* 80567968  40 82 00 70 */	bne lbl_805679D8
/* 8056796C  7F E3 FB 78 */	mr r3, r31
/* 80567970  38 80 02 62 */	li r4, 0x262
/* 80567974  4B BE 44 B9 */	bl getNearestActorP__8daNpcT_cFs
/* 80567978  7C 64 1B 78 */	mr r4, r3
/* 8056797C  38 7F 11 70 */	addi r3, r31, 0x1170
/* 80567980  4B BD DD 61 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80567984  48 00 00 54 */	b lbl_805679D8
lbl_80567988:
/* 80567988  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 8056798C  4B BD DD 7D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80567990  28 03 00 00 */	cmplwi r3, 0
/* 80567994  40 82 00 1C */	bne lbl_805679B0
/* 80567998  7F E3 FB 78 */	mr r3, r31
/* 8056799C  38 80 02 60 */	li r4, 0x260
/* 805679A0  4B BE 44 8D */	bl getNearestActorP__8daNpcT_cFs
/* 805679A4  7C 64 1B 78 */	mr r4, r3
/* 805679A8  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 805679AC  4B BD DD 35 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_805679B0:
/* 805679B0  38 7F 10 D0 */	addi r3, r31, 0x10d0
/* 805679B4  4B BD DD 55 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805679B8  28 03 00 00 */	cmplwi r3, 0
/* 805679BC  40 82 00 1C */	bne lbl_805679D8
/* 805679C0  7F E3 FB 78 */	mr r3, r31
/* 805679C4  38 80 02 45 */	li r4, 0x245
/* 805679C8  4B BE 44 65 */	bl getNearestActorP__8daNpcT_cFs
/* 805679CC  7C 64 1B 78 */	mr r4, r3
/* 805679D0  38 7F 10 D0 */	addi r3, r31, 0x10d0
/* 805679D4  4B BD DD 0D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_805679D8:
/* 805679D8  39 61 00 20 */	addi r11, r1, 0x20
/* 805679DC  4B DF A8 4D */	bl _restgpr_29
/* 805679E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805679E4  7C 08 03 A6 */	mtlr r0
/* 805679E8  38 21 00 20 */	addi r1, r1, 0x20
/* 805679EC  4E 80 00 20 */	blr 
