lbl_80B605C0:
/* 80B605C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B605C4  7C 08 02 A6 */	mflr r0
/* 80B605C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B605CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B605D0  7C 7F 1B 78 */	mr r31, r3
/* 80B605D4  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80B605D8  2C 00 00 03 */	cmpwi r0, 3
/* 80B605DC  41 82 00 D8 */	beq lbl_80B606B4
/* 80B605E0  40 80 00 14 */	bge lbl_80B605F4
/* 80B605E4  2C 00 00 01 */	cmpwi r0, 1
/* 80B605E8  41 82 00 18 */	beq lbl_80B60600
/* 80B605EC  40 80 00 44 */	bge lbl_80B60630
/* 80B605F0  48 00 01 40 */	b lbl_80B60730
lbl_80B605F4:
/* 80B605F4  2C 00 00 05 */	cmpwi r0, 5
/* 80B605F8  40 80 01 38 */	bge lbl_80B60730
/* 80B605FC  48 00 00 E4 */	b lbl_80B606E0
lbl_80B60600:
/* 80B60600  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B60604  4B 5E 51 04 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B60608  28 03 00 00 */	cmplwi r3, 0
/* 80B6060C  40 82 01 24 */	bne lbl_80B60730
/* 80B60610  7F E3 FB 78 */	mr r3, r31
/* 80B60614  38 80 00 0A */	li r4, 0xa
/* 80B60618  38 A0 00 00 */	li r5, 0
/* 80B6061C  4B 5E B8 C8 */	b getEvtAreaTagP__8daNpcT_cFii
/* 80B60620  7C 64 1B 78 */	mr r4, r3
/* 80B60624  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B60628  4B 5E 50 B8 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B6062C  48 00 01 04 */	b lbl_80B60730
lbl_80B60630:
/* 80B60630  38 7F 0F 94 */	addi r3, r31, 0xf94
/* 80B60634  4B 5E 50 D4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B60638  28 03 00 00 */	cmplwi r3, 0
/* 80B6063C  40 82 00 1C */	bne lbl_80B60658
/* 80B60640  7F E3 FB 78 */	mr r3, r31
/* 80B60644  38 80 02 2B */	li r4, 0x22b
/* 80B60648  4B 5E B7 E4 */	b getNearestActorP__8daNpcT_cFs
/* 80B6064C  7C 64 1B 78 */	mr r4, r3
/* 80B60650  38 7F 0F 94 */	addi r3, r31, 0xf94
/* 80B60654  4B 5E 50 8C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80B60658:
/* 80B60658  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80B6065C  4B 5E 50 AC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B60660  28 03 00 00 */	cmplwi r3, 0
/* 80B60664  40 82 00 20 */	bne lbl_80B60684
/* 80B60668  7F E3 FB 78 */	mr r3, r31
/* 80B6066C  38 80 00 0C */	li r4, 0xc
/* 80B60670  38 A0 00 00 */	li r5, 0
/* 80B60674  4B 5E B8 70 */	b getEvtAreaTagP__8daNpcT_cFii
/* 80B60678  7C 64 1B 78 */	mr r4, r3
/* 80B6067C  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80B60680  4B 5E 50 60 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80B60684:
/* 80B60684  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B60688  4B 5E 50 80 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B6068C  28 03 00 00 */	cmplwi r3, 0
/* 80B60690  40 82 00 A0 */	bne lbl_80B60730
/* 80B60694  7F E3 FB 78 */	mr r3, r31
/* 80B60698  38 80 00 0A */	li r4, 0xa
/* 80B6069C  38 A0 00 01 */	li r5, 1
/* 80B606A0  4B 5E B8 44 */	b getEvtAreaTagP__8daNpcT_cFii
/* 80B606A4  7C 64 1B 78 */	mr r4, r3
/* 80B606A8  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B606AC  4B 5E 50 34 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B606B0  48 00 00 80 */	b lbl_80B60730
lbl_80B606B4:
/* 80B606B4  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80B606B8  4B 5E 50 50 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B606BC  28 03 00 00 */	cmplwi r3, 0
/* 80B606C0  40 82 00 70 */	bne lbl_80B60730
/* 80B606C4  7F E3 FB 78 */	mr r3, r31
/* 80B606C8  38 80 00 04 */	li r4, 4
/* 80B606CC  4B FF F5 21 */	bl getOtherYkmP__11daNpc_ykW_cFi
/* 80B606D0  7C 64 1B 78 */	mr r4, r3
/* 80B606D4  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80B606D8  4B 5E 50 08 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B606DC  48 00 00 54 */	b lbl_80B60730
lbl_80B606E0:
/* 80B606E0  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80B606E4  4B 5E 50 24 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B606E8  28 03 00 00 */	cmplwi r3, 0
/* 80B606EC  40 82 00 1C */	bne lbl_80B60708
/* 80B606F0  7F E3 FB 78 */	mr r3, r31
/* 80B606F4  38 80 02 7B */	li r4, 0x27b
/* 80B606F8  4B 5E B7 34 */	b getNearestActorP__8daNpcT_cFs
/* 80B606FC  7C 64 1B 78 */	mr r4, r3
/* 80B60700  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80B60704  4B 5E 4F DC */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80B60708:
/* 80B60708  38 7F 0F A4 */	addi r3, r31, 0xfa4
/* 80B6070C  4B 5E 4F FC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B60710  28 03 00 00 */	cmplwi r3, 0
/* 80B60714  40 82 00 1C */	bne lbl_80B60730
/* 80B60718  7F E3 FB 78 */	mr r3, r31
/* 80B6071C  38 80 02 11 */	li r4, 0x211
/* 80B60720  4B 5E B7 0C */	b getNearestActorP__8daNpcT_cFs
/* 80B60724  7C 64 1B 78 */	mr r4, r3
/* 80B60728  38 7F 0F A4 */	addi r3, r31, 0xfa4
/* 80B6072C  4B 5E 4F B4 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80B60730:
/* 80B60730  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B60734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B60738  7C 08 03 A6 */	mtlr r0
/* 80B6073C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B60740  4E 80 00 20 */	blr 
