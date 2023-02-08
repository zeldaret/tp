lbl_80CCF708:
/* 80CCF708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCF70C  7C 08 02 A6 */	mflr r0
/* 80CCF710  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCF714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCF718  7C 7F 1B 78 */	mr r31, r3
/* 80CCF71C  88 03 10 C8 */	lbz r0, 0x10c8(r3)
/* 80CCF720  2C 00 00 04 */	cmpwi r0, 4
/* 80CCF724  40 80 00 1C */	bge lbl_80CCF740
/* 80CCF728  2C 00 00 01 */	cmpwi r0, 1
/* 80CCF72C  41 82 01 44 */	beq lbl_80CCF870
/* 80CCF730  40 80 02 14 */	bge lbl_80CCF944
/* 80CCF734  2C 00 00 00 */	cmpwi r0, 0
/* 80CCF738  40 80 00 14 */	bge lbl_80CCF74C
/* 80CCF73C  48 00 02 58 */	b lbl_80CCF994
lbl_80CCF740:
/* 80CCF740  2C 00 00 06 */	cmpwi r0, 6
/* 80CCF744  41 82 02 2C */	beq lbl_80CCF970
/* 80CCF748  48 00 02 4C */	b lbl_80CCF994
lbl_80CCF74C:
/* 80CCF74C  38 7F 10 D4 */	addi r3, r31, 0x10d4
/* 80CCF750  4B 47 5F B9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CCF754  28 03 00 00 */	cmplwi r3, 0
/* 80CCF758  40 82 00 1C */	bne lbl_80CCF774
/* 80CCF75C  7F E3 FB 78 */	mr r3, r31
/* 80CCF760  38 80 00 02 */	li r4, 2
/* 80CCF764  4B FF F6 CD */	bl getSekizoaP__15daObj_Sekizoa_cFi
/* 80CCF768  7C 64 1B 78 */	mr r4, r3
/* 80CCF76C  38 7F 10 D4 */	addi r3, r31, 0x10d4
/* 80CCF770  4B 47 5F 71 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80CCF774:
/* 80CCF774  38 7F 10 DC */	addi r3, r31, 0x10dc
/* 80CCF778  4B 47 5F 91 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CCF77C  28 03 00 00 */	cmplwi r3, 0
/* 80CCF780  40 82 00 1C */	bne lbl_80CCF79C
/* 80CCF784  7F E3 FB 78 */	mr r3, r31
/* 80CCF788  38 80 00 03 */	li r4, 3
/* 80CCF78C  4B FF F6 A5 */	bl getSekizoaP__15daObj_Sekizoa_cFi
/* 80CCF790  7C 64 1B 78 */	mr r4, r3
/* 80CCF794  38 7F 10 DC */	addi r3, r31, 0x10dc
/* 80CCF798  4B 47 5F 49 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80CCF79C:
/* 80CCF79C  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 80CCF7A0  4B 47 5F 69 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CCF7A4  28 03 00 00 */	cmplwi r3, 0
/* 80CCF7A8  40 82 00 1C */	bne lbl_80CCF7C4
/* 80CCF7AC  7F E3 FB 78 */	mr r3, r31
/* 80CCF7B0  38 80 00 01 */	li r4, 1
/* 80CCF7B4  4B FF F6 7D */	bl getSekizoaP__15daObj_Sekizoa_cFi
/* 80CCF7B8  7C 64 1B 78 */	mr r4, r3
/* 80CCF7BC  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 80CCF7C0  4B 47 5F 21 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80CCF7C4:
/* 80CCF7C4  38 7F 10 EC */	addi r3, r31, 0x10ec
/* 80CCF7C8  4B 47 5F 41 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CCF7CC  28 03 00 00 */	cmplwi r3, 0
/* 80CCF7D0  40 82 00 1C */	bne lbl_80CCF7EC
/* 80CCF7D4  7F E3 FB 78 */	mr r3, r31
/* 80CCF7D8  38 80 01 34 */	li r4, 0x134
/* 80CCF7DC  4B 47 C6 51 */	bl getNearestActorP__8daNpcT_cFs
/* 80CCF7E0  7C 64 1B 78 */	mr r4, r3
/* 80CCF7E4  38 7F 10 EC */	addi r3, r31, 0x10ec
/* 80CCF7E8  4B 47 5E F9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80CCF7EC:
/* 80CCF7EC  38 7F 10 F4 */	addi r3, r31, 0x10f4
/* 80CCF7F0  4B 47 5F 19 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CCF7F4  28 03 00 00 */	cmplwi r3, 0
/* 80CCF7F8  40 82 00 20 */	bne lbl_80CCF818
/* 80CCF7FC  7F E3 FB 78 */	mr r3, r31
/* 80CCF800  38 80 00 01 */	li r4, 1
/* 80CCF804  38 A0 00 00 */	li r5, 0
/* 80CCF808  4B 47 C6 DD */	bl getEvtAreaTagP__8daNpcT_cFii
/* 80CCF80C  7C 64 1B 78 */	mr r4, r3
/* 80CCF810  38 7F 10 F4 */	addi r3, r31, 0x10f4
/* 80CCF814  4B 47 5E CD */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80CCF818:
/* 80CCF818  38 7F 10 FC */	addi r3, r31, 0x10fc
/* 80CCF81C  4B 47 5E ED */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CCF820  28 03 00 00 */	cmplwi r3, 0
/* 80CCF824  40 82 00 20 */	bne lbl_80CCF844
/* 80CCF828  7F E3 FB 78 */	mr r3, r31
/* 80CCF82C  38 80 00 01 */	li r4, 1
/* 80CCF830  38 A0 00 01 */	li r5, 1
/* 80CCF834  4B 47 C6 B1 */	bl getEvtAreaTagP__8daNpcT_cFii
/* 80CCF838  7C 64 1B 78 */	mr r4, r3
/* 80CCF83C  38 7F 10 FC */	addi r3, r31, 0x10fc
/* 80CCF840  4B 47 5E A1 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80CCF844:
/* 80CCF844  38 7F 11 04 */	addi r3, r31, 0x1104
/* 80CCF848  4B 47 5E C1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CCF84C  28 03 00 00 */	cmplwi r3, 0
/* 80CCF850  40 82 01 44 */	bne lbl_80CCF994
/* 80CCF854  7F E3 FB 78 */	mr r3, r31
/* 80CCF858  38 80 01 32 */	li r4, 0x132
/* 80CCF85C  4B 47 C5 D1 */	bl getNearestActorP__8daNpcT_cFs
/* 80CCF860  7C 64 1B 78 */	mr r4, r3
/* 80CCF864  38 7F 11 04 */	addi r3, r31, 0x1104
/* 80CCF868  4B 47 5E 79 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80CCF86C  48 00 01 28 */	b lbl_80CCF994
lbl_80CCF870:
/* 80CCF870  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 80CCF874  4B 47 5E 95 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CCF878  28 03 00 00 */	cmplwi r3, 0
/* 80CCF87C  40 82 00 1C */	bne lbl_80CCF898
/* 80CCF880  7F E3 FB 78 */	mr r3, r31
/* 80CCF884  38 80 00 00 */	li r4, 0
/* 80CCF888  4B FF F5 A9 */	bl getSekizoaP__15daObj_Sekizoa_cFi
/* 80CCF88C  7C 64 1B 78 */	mr r4, r3
/* 80CCF890  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 80CCF894  4B 47 5E 4D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80CCF898:
/* 80CCF898  38 7F 10 EC */	addi r3, r31, 0x10ec
/* 80CCF89C  4B 47 5E 6D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CCF8A0  28 03 00 00 */	cmplwi r3, 0
/* 80CCF8A4  40 82 00 1C */	bne lbl_80CCF8C0
/* 80CCF8A8  7F E3 FB 78 */	mr r3, r31
/* 80CCF8AC  38 80 01 34 */	li r4, 0x134
/* 80CCF8B0  4B 47 C5 7D */	bl getNearestActorP__8daNpcT_cFs
/* 80CCF8B4  7C 64 1B 78 */	mr r4, r3
/* 80CCF8B8  38 7F 10 EC */	addi r3, r31, 0x10ec
/* 80CCF8BC  4B 47 5E 25 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80CCF8C0:
/* 80CCF8C0  38 7F 10 F4 */	addi r3, r31, 0x10f4
/* 80CCF8C4  4B 47 5E 45 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CCF8C8  28 03 00 00 */	cmplwi r3, 0
/* 80CCF8CC  40 82 00 20 */	bne lbl_80CCF8EC
/* 80CCF8D0  7F E3 FB 78 */	mr r3, r31
/* 80CCF8D4  38 80 00 01 */	li r4, 1
/* 80CCF8D8  38 A0 00 00 */	li r5, 0
/* 80CCF8DC  4B 47 C6 09 */	bl getEvtAreaTagP__8daNpcT_cFii
/* 80CCF8E0  7C 64 1B 78 */	mr r4, r3
/* 80CCF8E4  38 7F 10 F4 */	addi r3, r31, 0x10f4
/* 80CCF8E8  4B 47 5D F9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80CCF8EC:
/* 80CCF8EC  38 7F 10 FC */	addi r3, r31, 0x10fc
/* 80CCF8F0  4B 47 5E 19 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CCF8F4  28 03 00 00 */	cmplwi r3, 0
/* 80CCF8F8  40 82 00 20 */	bne lbl_80CCF918
/* 80CCF8FC  7F E3 FB 78 */	mr r3, r31
/* 80CCF900  38 80 00 01 */	li r4, 1
/* 80CCF904  38 A0 00 01 */	li r5, 1
/* 80CCF908  4B 47 C5 DD */	bl getEvtAreaTagP__8daNpcT_cFii
/* 80CCF90C  7C 64 1B 78 */	mr r4, r3
/* 80CCF910  38 7F 10 FC */	addi r3, r31, 0x10fc
/* 80CCF914  4B 47 5D CD */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80CCF918:
/* 80CCF918  38 7F 11 04 */	addi r3, r31, 0x1104
/* 80CCF91C  4B 47 5D ED */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CCF920  28 03 00 00 */	cmplwi r3, 0
/* 80CCF924  40 82 00 70 */	bne lbl_80CCF994
/* 80CCF928  7F E3 FB 78 */	mr r3, r31
/* 80CCF92C  38 80 01 32 */	li r4, 0x132
/* 80CCF930  4B 47 C4 FD */	bl getNearestActorP__8daNpcT_cFs
/* 80CCF934  7C 64 1B 78 */	mr r4, r3
/* 80CCF938  38 7F 11 04 */	addi r3, r31, 0x1104
/* 80CCF93C  4B 47 5D A5 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80CCF940  48 00 00 54 */	b lbl_80CCF994
lbl_80CCF944:
/* 80CCF944  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 80CCF948  4B 47 5D C1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CCF94C  28 03 00 00 */	cmplwi r3, 0
/* 80CCF950  40 82 00 44 */	bne lbl_80CCF994
/* 80CCF954  7F E3 FB 78 */	mr r3, r31
/* 80CCF958  38 80 00 00 */	li r4, 0
/* 80CCF95C  4B FF F4 D5 */	bl getSekizoaP__15daObj_Sekizoa_cFi
/* 80CCF960  7C 64 1B 78 */	mr r4, r3
/* 80CCF964  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 80CCF968  4B 47 5D 79 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80CCF96C  48 00 00 28 */	b lbl_80CCF994
lbl_80CCF970:
/* 80CCF970  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 80CCF974  4B 47 5D 95 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CCF978  28 03 00 00 */	cmplwi r3, 0
/* 80CCF97C  40 82 00 18 */	bne lbl_80CCF994
/* 80CCF980  7F E3 FB 78 */	mr r3, r31
/* 80CCF984  4B FF F6 21 */	bl getKMsgTagP__15daObj_Sekizoa_cFv
/* 80CCF988  7C 64 1B 78 */	mr r4, r3
/* 80CCF98C  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 80CCF990  4B 47 5D 51 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80CCF994:
/* 80CCF994  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCF998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCF99C  7C 08 03 A6 */	mtlr r0
/* 80CCF9A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCF9A4  4E 80 00 20 */	blr 
