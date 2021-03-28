lbl_80A66664:
/* 80A66664  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A66668  7C 08 02 A6 */	mflr r0
/* 80A6666C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A66670  39 61 00 40 */	addi r11, r1, 0x40
/* 80A66674  4B 8F BB 60 */	b _savegpr_27
/* 80A66678  7C 7C 1B 78 */	mr r28, r3
/* 80A6667C  7C 9F 23 78 */	mr r31, r4
/* 80A66680  3B C0 00 00 */	li r30, 0
/* 80A66684  3B A0 FF FF */	li r29, -1
/* 80A66688  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A6668C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A66690  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80A66694  7F 63 DB 78 */	mr r3, r27
/* 80A66698  3C A0 80 A7 */	lis r5, struct_80A68FDC+0x0@ha
/* 80A6669C  38 A5 8F DC */	addi r5, r5, struct_80A68FDC+0x0@l
/* 80A666A0  38 A5 00 9A */	addi r5, r5, 0x9a
/* 80A666A4  38 C0 00 03 */	li r6, 3
/* 80A666A8  4B 5E 1A 44 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A666AC  28 03 00 00 */	cmplwi r3, 0
/* 80A666B0  41 82 00 08 */	beq lbl_80A666B8
/* 80A666B4  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A666B8:
/* 80A666B8  7F 63 DB 78 */	mr r3, r27
/* 80A666BC  7F E4 FB 78 */	mr r4, r31
/* 80A666C0  4B 5E 16 8C */	b getIsAddvance__16dEvent_manager_cFi
/* 80A666C4  2C 03 00 00 */	cmpwi r3, 0
/* 80A666C8  41 82 01 70 */	beq lbl_80A66838
/* 80A666CC  2C 1D 00 01 */	cmpwi r29, 1
/* 80A666D0  41 82 01 3C */	beq lbl_80A6680C
/* 80A666D4  40 80 01 64 */	bge lbl_80A66838
/* 80A666D8  2C 1D 00 00 */	cmpwi r29, 0
/* 80A666DC  40 80 00 08 */	bge lbl_80A666E4
/* 80A666E0  48 00 01 58 */	b lbl_80A66838
lbl_80A666E4:
/* 80A666E4  38 7C 0B A0 */	addi r3, r28, 0xba0
/* 80A666E8  4B 6D F0 20 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A666EC  7C 7F 1B 78 */	mr r31, r3
/* 80A666F0  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80A666F4  2C 00 00 09 */	cmpwi r0, 9
/* 80A666F8  41 82 00 28 */	beq lbl_80A66720
/* 80A666FC  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80A66700  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80A66704  4B 6D F1 94 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A66708  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80A6670C  38 00 00 09 */	li r0, 9
/* 80A66710  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80A66714  3C 60 80 A7 */	lis r3, lit_4695@ha
/* 80A66718  C0 03 8F 98 */	lfs f0, lit_4695@l(r3)
/* 80A6671C  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80A66720:
/* 80A66720  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80A66724  2C 00 00 08 */	cmpwi r0, 8
/* 80A66728  41 82 00 28 */	beq lbl_80A66750
/* 80A6672C  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80A66730  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80A66734  4B 6D F1 64 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A66738  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80A6673C  38 00 00 08 */	li r0, 8
/* 80A66740  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80A66744  3C 60 80 A7 */	lis r3, lit_4695@ha
/* 80A66748  C0 03 8F 98 */	lfs f0, lit_4695@l(r3)
/* 80A6674C  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80A66750:
/* 80A66750  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80A66754  2C 00 00 00 */	cmpwi r0, 0
/* 80A66758  41 82 00 28 */	beq lbl_80A66780
/* 80A6675C  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A66760  4B 6D EF 9C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A66764  38 00 00 00 */	li r0, 0
/* 80A66768  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80A6676C  3C 60 80 A7 */	lis r3, lit_4072@ha
/* 80A66770  C0 03 8F 70 */	lfs f0, lit_4072@l(r3)
/* 80A66774  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80A66778  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80A6677C  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80A66780:
/* 80A66780  38 00 00 00 */	li r0, 0
/* 80A66784  B0 1C 0C D4 */	sth r0, 0xcd4(r28)
/* 80A66788  B0 1C 0C D6 */	sth r0, 0xcd6(r28)
/* 80A6678C  38 00 00 01 */	li r0, 1
/* 80A66790  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80A66794  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80A66798  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80A6679C  28 04 00 FF */	cmplwi r4, 0xff
/* 80A667A0  38 00 FF FF */	li r0, -1
/* 80A667A4  41 82 00 08 */	beq lbl_80A667AC
/* 80A667A8  7C 80 23 78 */	mr r0, r4
lbl_80A667AC:
/* 80A667AC  2C 00 FF FF */	cmpwi r0, -1
/* 80A667B0  40 81 00 88 */	ble lbl_80A66838
/* 80A667B4  28 04 00 FF */	cmplwi r4, 0xff
/* 80A667B8  38 60 FF FF */	li r3, -1
/* 80A667BC  41 82 00 08 */	beq lbl_80A667C4
/* 80A667C0  54 83 04 3E */	clrlwi r3, r4, 0x10
lbl_80A667C4:
/* 80A667C4  88 9F 04 E2 */	lbz r4, 0x4e2(r31)
/* 80A667C8  7C 84 07 74 */	extsb r4, r4
/* 80A667CC  38 A1 00 10 */	addi r5, r1, 0x10
/* 80A667D0  38 C1 00 08 */	addi r6, r1, 8
/* 80A667D4  4B 6E 5D 2C */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 80A667D8  2C 03 00 00 */	cmpwi r3, 0
/* 80A667DC  41 82 00 5C */	beq lbl_80A66838
/* 80A667E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A667E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A667E8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A667EC  38 81 00 10 */	addi r4, r1, 0x10
/* 80A667F0  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 80A667F4  38 C0 00 00 */	li r6, 0
/* 80A667F8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A667FC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A66800  7D 89 03 A6 */	mtctr r12
/* 80A66804  4E 80 04 21 */	bctrl 
/* 80A66808  48 00 00 30 */	b lbl_80A66838
lbl_80A6680C:
/* 80A6680C  38 7C 0B A0 */	addi r3, r28, 0xba0
/* 80A66810  4B 6D EE F8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A66814  A8 63 04 B4 */	lha r3, 0x4b4(r3)
/* 80A66818  3C 03 00 00 */	addis r0, r3, 0
/* 80A6681C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80A66820  38 80 FF FF */	li r4, -1
/* 80A66824  41 82 00 08 */	beq lbl_80A6682C
/* 80A66828  54 64 04 3E */	clrlwi r4, r3, 0x10
lbl_80A6682C:
/* 80A6682C  7F 83 E3 78 */	mr r3, r28
/* 80A66830  38 A0 00 00 */	li r5, 0
/* 80A66834  4B 6E 53 BC */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80A66838:
/* 80A66838  2C 1D 00 01 */	cmpwi r29, 1
/* 80A6683C  41 82 00 28 */	beq lbl_80A66864
/* 80A66840  40 80 00 5C */	bge lbl_80A6689C
/* 80A66844  2C 1D 00 00 */	cmpwi r29, 0
/* 80A66848  40 80 00 08 */	bge lbl_80A66850
/* 80A6684C  48 00 00 50 */	b lbl_80A6689C
lbl_80A66850:
/* 80A66850  80 1C 0B 84 */	lwz r0, 0xb84(r28)
/* 80A66854  2C 00 00 00 */	cmpwi r0, 0
/* 80A66858  40 81 00 44 */	ble lbl_80A6689C
/* 80A6685C  3B C0 00 01 */	li r30, 1
/* 80A66860  48 00 00 3C */	b lbl_80A6689C
lbl_80A66864:
/* 80A66864  7F 83 E3 78 */	mr r3, r28
/* 80A66868  38 80 00 00 */	li r4, 0
/* 80A6686C  38 A0 00 00 */	li r5, 0
/* 80A66870  38 C0 00 00 */	li r6, 0
/* 80A66874  38 E0 00 00 */	li r7, 0
/* 80A66878  4B 6E 54 00 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A6687C  2C 03 00 00 */	cmpwi r3, 0
/* 80A66880  41 82 00 1C */	beq lbl_80A6689C
/* 80A66884  88 1C 09 9A */	lbz r0, 0x99a(r28)
/* 80A66888  28 00 00 01 */	cmplwi r0, 1
/* 80A6688C  40 82 00 10 */	bne lbl_80A6689C
/* 80A66890  38 7C 0B A0 */	addi r3, r28, 0xba0
/* 80A66894  4B 6D EE 68 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A66898  3B C0 00 01 */	li r30, 1
lbl_80A6689C:
/* 80A6689C  7F C3 F3 78 */	mr r3, r30
/* 80A668A0  39 61 00 40 */	addi r11, r1, 0x40
/* 80A668A4  4B 8F B9 7C */	b _restgpr_27
/* 80A668A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A668AC  7C 08 03 A6 */	mtlr r0
/* 80A668B0  38 21 00 40 */	addi r1, r1, 0x40
/* 80A668B4  4E 80 00 20 */	blr 
