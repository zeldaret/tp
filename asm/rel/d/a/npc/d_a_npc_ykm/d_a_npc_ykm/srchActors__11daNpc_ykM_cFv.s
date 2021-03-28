lbl_80B550A4:
/* 80B550A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B550A8  7C 08 02 A6 */	mflr r0
/* 80B550AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B550B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B550B4  7C 7F 1B 78 */	mr r31, r3
/* 80B550B8  88 03 14 74 */	lbz r0, 0x1474(r3)
/* 80B550BC  2C 00 00 03 */	cmpwi r0, 3
/* 80B550C0  41 82 00 D4 */	beq lbl_80B55194
/* 80B550C4  40 80 00 14 */	bge lbl_80B550D8
/* 80B550C8  2C 00 00 01 */	cmpwi r0, 1
/* 80B550CC  41 82 00 20 */	beq lbl_80B550EC
/* 80B550D0  40 80 00 94 */	bge lbl_80B55164
/* 80B550D4  48 00 01 6C */	b lbl_80B55240
lbl_80B550D8:
/* 80B550D8  2C 00 00 07 */	cmpwi r0, 7
/* 80B550DC  40 80 01 64 */	bge lbl_80B55240
/* 80B550E0  2C 00 00 05 */	cmpwi r0, 5
/* 80B550E4  40 80 01 5C */	bge lbl_80B55240
/* 80B550E8  48 00 00 D8 */	b lbl_80B551C0
lbl_80B550EC:
/* 80B550EC  38 7F 14 A8 */	addi r3, r31, 0x14a8
/* 80B550F0  4B 5F 06 18 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B550F4  28 03 00 00 */	cmplwi r3, 0
/* 80B550F8  40 82 00 20 */	bne lbl_80B55118
/* 80B550FC  7F E3 FB 78 */	mr r3, r31
/* 80B55100  38 80 00 0E */	li r4, 0xe
/* 80B55104  38 A0 00 00 */	li r5, 0
/* 80B55108  4B 5F 6D DC */	b getEvtAreaTagP__8daNpcT_cFii
/* 80B5510C  7C 64 1B 78 */	mr r4, r3
/* 80B55110  38 7F 14 A8 */	addi r3, r31, 0x14a8
/* 80B55114  4B 5F 05 CC */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80B55118:
/* 80B55118  38 7F 14 90 */	addi r3, r31, 0x1490
/* 80B5511C  4B 5F 05 EC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B55120  28 03 00 00 */	cmplwi r3, 0
/* 80B55124  40 82 00 18 */	bne lbl_80B5513C
/* 80B55128  7F E3 FB 78 */	mr r3, r31
/* 80B5512C  4B FF F1 E1 */	bl getTomatoPureeP__11daNpc_ykM_cFv
/* 80B55130  7C 64 1B 78 */	mr r4, r3
/* 80B55134  38 7F 14 90 */	addi r3, r31, 0x1490
/* 80B55138  4B 5F 05 A8 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80B5513C:
/* 80B5513C  38 7F 14 98 */	addi r3, r31, 0x1498
/* 80B55140  4B 5F 05 C8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B55144  28 03 00 00 */	cmplwi r3, 0
/* 80B55148  40 82 00 F8 */	bne lbl_80B55240
/* 80B5514C  7F E3 FB 78 */	mr r3, r31
/* 80B55150  4B FF F2 8D */	bl getCheeseP__11daNpc_ykM_cFv
/* 80B55154  7C 64 1B 78 */	mr r4, r3
/* 80B55158  38 7F 14 98 */	addi r3, r31, 0x1498
/* 80B5515C  4B 5F 05 84 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B55160  48 00 00 E0 */	b lbl_80B55240
lbl_80B55164:
/* 80B55164  38 7F 14 A8 */	addi r3, r31, 0x14a8
/* 80B55168  4B 5F 05 A0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B5516C  28 03 00 00 */	cmplwi r3, 0
/* 80B55170  40 82 00 D0 */	bne lbl_80B55240
/* 80B55174  7F E3 FB 78 */	mr r3, r31
/* 80B55178  38 80 00 0E */	li r4, 0xe
/* 80B5517C  38 A0 00 00 */	li r5, 0
/* 80B55180  4B 5F 6D 64 */	b getEvtAreaTagP__8daNpcT_cFii
/* 80B55184  7C 64 1B 78 */	mr r4, r3
/* 80B55188  38 7F 14 A8 */	addi r3, r31, 0x14a8
/* 80B5518C  4B 5F 05 54 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B55190  48 00 00 B0 */	b lbl_80B55240
lbl_80B55194:
/* 80B55194  38 7F 14 A0 */	addi r3, r31, 0x14a0
/* 80B55198  4B 5F 05 70 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B5519C  28 03 00 00 */	cmplwi r3, 0
/* 80B551A0  40 82 00 A0 */	bne lbl_80B55240
/* 80B551A4  7F E3 FB 78 */	mr r3, r31
/* 80B551A8  38 80 02 7C */	li r4, 0x27c
/* 80B551AC  4B 5F 6C 80 */	b getNearestActorP__8daNpcT_cFs
/* 80B551B0  7C 64 1B 78 */	mr r4, r3
/* 80B551B4  38 7F 14 A0 */	addi r3, r31, 0x14a0
/* 80B551B8  4B 5F 05 28 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B551BC  48 00 00 84 */	b lbl_80B55240
lbl_80B551C0:
/* 80B551C0  38 7F 14 A8 */	addi r3, r31, 0x14a8
/* 80B551C4  4B 5F 05 44 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B551C8  28 03 00 00 */	cmplwi r3, 0
/* 80B551CC  40 82 00 20 */	bne lbl_80B551EC
/* 80B551D0  7F E3 FB 78 */	mr r3, r31
/* 80B551D4  38 80 00 0E */	li r4, 0xe
/* 80B551D8  38 A0 00 01 */	li r5, 1
/* 80B551DC  4B 5F 6D 08 */	b getEvtAreaTagP__8daNpcT_cFii
/* 80B551E0  7C 64 1B 78 */	mr r4, r3
/* 80B551E4  38 7F 14 A8 */	addi r3, r31, 0x14a8
/* 80B551E8  4B 5F 04 F8 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80B551EC:
/* 80B551EC  38 7F 14 B0 */	addi r3, r31, 0x14b0
/* 80B551F0  4B 5F 05 18 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B551F4  28 03 00 00 */	cmplwi r3, 0
/* 80B551F8  40 82 00 20 */	bne lbl_80B55218
/* 80B551FC  7F E3 FB 78 */	mr r3, r31
/* 80B55200  38 80 00 0E */	li r4, 0xe
/* 80B55204  38 A0 00 02 */	li r5, 2
/* 80B55208  4B 5F 6C DC */	b getEvtAreaTagP__8daNpcT_cFii
/* 80B5520C  7C 64 1B 78 */	mr r4, r3
/* 80B55210  38 7F 14 B0 */	addi r3, r31, 0x14b0
/* 80B55214  4B 5F 04 CC */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80B55218:
/* 80B55218  38 7F 14 A0 */	addi r3, r31, 0x14a0
/* 80B5521C  4B 5F 04 EC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B55220  28 03 00 00 */	cmplwi r3, 0
/* 80B55224  40 82 00 1C */	bne lbl_80B55240
/* 80B55228  7F E3 FB 78 */	mr r3, r31
/* 80B5522C  38 80 00 03 */	li r4, 3
/* 80B55230  4B FF F4 95 */	bl getOtherYkwP__11daNpc_ykM_cFi
/* 80B55234  7C 64 1B 78 */	mr r4, r3
/* 80B55238  38 7F 14 A0 */	addi r3, r31, 0x14a0
/* 80B5523C  4B 5F 04 A4 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80B55240:
/* 80B55240  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B55244  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B55248  7C 08 03 A6 */	mtlr r0
/* 80B5524C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B55250  4E 80 00 20 */	blr 
