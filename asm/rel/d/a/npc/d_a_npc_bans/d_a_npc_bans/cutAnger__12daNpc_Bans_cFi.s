lbl_80964FEC:
/* 80964FEC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80964FF0  7C 08 02 A6 */	mflr r0
/* 80964FF4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80964FF8  39 61 00 50 */	addi r11, r1, 0x50
/* 80964FFC  4B 9F D1 CC */	b _savegpr_24
/* 80965000  7C 79 1B 78 */	mr r25, r3
/* 80965004  7C 9A 23 78 */	mr r26, r4
/* 80965008  3C 60 80 96 */	lis r3, m__18daNpc_Bans_Param_c@ha
/* 8096500C  3B C3 7E 20 */	addi r30, r3, m__18daNpc_Bans_Param_c@l
/* 80965010  3B 80 00 00 */	li r28, 0
/* 80965014  3B 60 FF FF */	li r27, -1
/* 80965018  3B 00 00 00 */	li r24, 0
/* 8096501C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80965020  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80965024  3B BF 4F F8 */	addi r29, r31, 0x4ff8
/* 80965028  7F A3 EB 78 */	mr r3, r29
/* 8096502C  3C A0 80 96 */	lis r5, struct_80967F6C+0x0@ha
/* 80965030  38 A5 7F 6C */	addi r5, r5, struct_80967F6C+0x0@l
/* 80965034  38 A5 00 8A */	addi r5, r5, 0x8a
/* 80965038  38 C0 00 03 */	li r6, 3
/* 8096503C  4B 6E 30 B0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80965040  28 03 00 00 */	cmplwi r3, 0
/* 80965044  41 82 00 08 */	beq lbl_8096504C
/* 80965048  83 63 00 00 */	lwz r27, 0(r3)
lbl_8096504C:
/* 8096504C  7F A3 EB 78 */	mr r3, r29
/* 80965050  7F 44 D3 78 */	mr r4, r26
/* 80965054  3C A0 80 96 */	lis r5, struct_80967F6C+0x0@ha
/* 80965058  38 A5 7F 6C */	addi r5, r5, struct_80967F6C+0x0@l
/* 8096505C  38 A5 00 8E */	addi r5, r5, 0x8e
/* 80965060  38 C0 00 03 */	li r6, 3
/* 80965064  4B 6E 30 88 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80965068  28 03 00 00 */	cmplwi r3, 0
/* 8096506C  41 82 00 08 */	beq lbl_80965074
/* 80965070  83 03 00 00 */	lwz r24, 0(r3)
lbl_80965074:
/* 80965074  7F A3 EB 78 */	mr r3, r29
/* 80965078  7F 44 D3 78 */	mr r4, r26
/* 8096507C  4B 6E 2C D0 */	b getIsAddvance__16dEvent_manager_cFi
/* 80965080  2C 03 00 00 */	cmpwi r3, 0
/* 80965084  41 82 02 9C */	beq lbl_80965320
/* 80965088  2C 1B 00 04 */	cmpwi r27, 4
/* 8096508C  41 82 01 C8 */	beq lbl_80965254
/* 80965090  40 80 00 1C */	bge lbl_809650AC
/* 80965094  2C 1B 00 02 */	cmpwi r27, 2
/* 80965098  41 82 00 9C */	beq lbl_80965134
/* 8096509C  40 80 01 A8 */	bge lbl_80965244
/* 809650A0  2C 1B 00 00 */	cmpwi r27, 0
/* 809650A4  40 80 00 18 */	bge lbl_809650BC
/* 809650A8  48 00 02 78 */	b lbl_80965320
lbl_809650AC:
/* 809650AC  2C 1B 00 06 */	cmpwi r27, 6
/* 809650B0  41 82 02 08 */	beq lbl_809652B8
/* 809650B4  40 80 02 6C */	bge lbl_80965320
/* 809650B8  48 00 01 A4 */	b lbl_8096525C
lbl_809650BC:
/* 809650BC  88 19 12 00 */	lbz r0, 0x1200(r25)
/* 809650C0  28 00 00 03 */	cmplwi r0, 3
/* 809650C4  40 82 00 5C */	bne lbl_80965120
/* 809650C8  80 19 0B 58 */	lwz r0, 0xb58(r25)
/* 809650CC  2C 00 00 03 */	cmpwi r0, 3
/* 809650D0  41 82 00 24 */	beq lbl_809650F4
/* 809650D4  83 19 0B 5C */	lwz r24, 0xb5c(r25)
/* 809650D8  38 79 0B 50 */	addi r3, r25, 0xb50
/* 809650DC  4B 7E 07 BC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809650E0  93 19 0B 5C */	stw r24, 0xb5c(r25)
/* 809650E4  38 00 00 03 */	li r0, 3
/* 809650E8  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 809650EC  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 809650F0  D0 19 0B 68 */	stfs f0, 0xb68(r25)
lbl_809650F4:
/* 809650F4  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 809650F8  2C 00 00 0F */	cmpwi r0, 0xf
/* 809650FC  41 82 00 24 */	beq lbl_80965120
/* 80965100  83 19 0B 80 */	lwz r24, 0xb80(r25)
/* 80965104  38 79 0B 74 */	addi r3, r25, 0xb74
/* 80965108  4B 7E 07 90 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096510C  93 19 0B 80 */	stw r24, 0xb80(r25)
/* 80965110  38 00 00 0F */	li r0, 0xf
/* 80965114  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 80965118  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 8096511C  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
lbl_80965120:
/* 80965120  7F 23 CB 78 */	mr r3, r25
/* 80965124  38 80 00 0C */	li r4, 0xc
/* 80965128  38 A0 00 00 */	li r5, 0
/* 8096512C  4B 7E 6A C4 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80965130  48 00 01 F0 */	b lbl_80965320
lbl_80965134:
/* 80965134  88 19 12 00 */	lbz r0, 0x1200(r25)
/* 80965138  28 00 00 03 */	cmplwi r0, 3
/* 8096513C  40 82 00 60 */	bne lbl_8096519C
/* 80965140  80 19 0B 58 */	lwz r0, 0xb58(r25)
/* 80965144  2C 00 00 03 */	cmpwi r0, 3
/* 80965148  41 82 00 24 */	beq lbl_8096516C
/* 8096514C  83 19 0B 5C */	lwz r24, 0xb5c(r25)
/* 80965150  38 79 0B 50 */	addi r3, r25, 0xb50
/* 80965154  4B 7E 07 44 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965158  93 19 0B 5C */	stw r24, 0xb5c(r25)
/* 8096515C  38 00 00 03 */	li r0, 3
/* 80965160  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 80965164  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80965168  D0 19 0B 68 */	stfs f0, 0xb68(r25)
lbl_8096516C:
/* 8096516C  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 80965170  2C 00 00 14 */	cmpwi r0, 0x14
/* 80965174  41 82 00 80 */	beq lbl_809651F4
/* 80965178  83 19 0B 80 */	lwz r24, 0xb80(r25)
/* 8096517C  38 79 0B 74 */	addi r3, r25, 0xb74
/* 80965180  4B 7E 07 18 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965184  93 19 0B 80 */	stw r24, 0xb80(r25)
/* 80965188  38 00 00 14 */	li r0, 0x14
/* 8096518C  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 80965190  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80965194  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
/* 80965198  48 00 00 5C */	b lbl_809651F4
lbl_8096519C:
/* 8096519C  80 19 0B 58 */	lwz r0, 0xb58(r25)
/* 809651A0  2C 00 00 03 */	cmpwi r0, 3
/* 809651A4  41 82 00 24 */	beq lbl_809651C8
/* 809651A8  83 19 0B 5C */	lwz r24, 0xb5c(r25)
/* 809651AC  38 79 0B 50 */	addi r3, r25, 0xb50
/* 809651B0  4B 7E 06 E8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809651B4  93 19 0B 5C */	stw r24, 0xb5c(r25)
/* 809651B8  38 00 00 03 */	li r0, 3
/* 809651BC  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 809651C0  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 809651C4  D0 19 0B 68 */	stfs f0, 0xb68(r25)
lbl_809651C8:
/* 809651C8  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 809651CC  2C 00 00 11 */	cmpwi r0, 0x11
/* 809651D0  41 82 00 24 */	beq lbl_809651F4
/* 809651D4  83 19 0B 80 */	lwz r24, 0xb80(r25)
/* 809651D8  38 79 0B 74 */	addi r3, r25, 0xb74
/* 809651DC  4B 7E 06 BC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809651E0  93 19 0B 80 */	stw r24, 0xb80(r25)
/* 809651E4  38 00 00 11 */	li r0, 0x11
/* 809651E8  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 809651EC  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 809651F0  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
lbl_809651F4:
/* 809651F4  80 19 0C E0 */	lwz r0, 0xce0(r25)
/* 809651F8  2C 00 00 00 */	cmpwi r0, 0
/* 809651FC  41 82 00 24 */	beq lbl_80965220
/* 80965200  38 79 0B A8 */	addi r3, r25, 0xba8
/* 80965204  4B 7E 04 F8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80965208  38 00 00 00 */	li r0, 0
/* 8096520C  90 19 0B C8 */	stw r0, 0xbc8(r25)
/* 80965210  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80965214  D0 19 0C F4 */	stfs f0, 0xcf4(r25)
/* 80965218  98 19 0C FF */	stb r0, 0xcff(r25)
/* 8096521C  90 19 0C E0 */	stw r0, 0xce0(r25)
lbl_80965220:
/* 80965220  38 00 00 00 */	li r0, 0
/* 80965224  B0 19 0C D4 */	sth r0, 0xcd4(r25)
/* 80965228  B0 19 0C D6 */	sth r0, 0xcd6(r25)
/* 8096522C  38 00 00 01 */	li r0, 1
/* 80965230  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80965234  7F 23 CB 78 */	mr r3, r25
/* 80965238  A8 99 04 B6 */	lha r4, 0x4b6(r25)
/* 8096523C  4B 7E 57 DC */	b setAngle__8daNpcT_cFs
/* 80965240  48 00 00 E0 */	b lbl_80965320
lbl_80965244:
/* 80965244  93 19 0D C4 */	stw r24, 0xdc4(r25)
/* 80965248  38 00 00 14 */	li r0, 0x14
/* 8096524C  98 19 12 68 */	stb r0, 0x1268(r25)
/* 80965250  48 00 00 D0 */	b lbl_80965320
lbl_80965254:
/* 80965254  93 19 0D C4 */	stw r24, 0xdc4(r25)
/* 80965258  48 00 00 C8 */	b lbl_80965320
lbl_8096525C:
/* 8096525C  80 19 0B 58 */	lwz r0, 0xb58(r25)
/* 80965260  2C 00 00 03 */	cmpwi r0, 3
/* 80965264  41 82 00 24 */	beq lbl_80965288
/* 80965268  83 19 0B 5C */	lwz r24, 0xb5c(r25)
/* 8096526C  38 79 0B 50 */	addi r3, r25, 0xb50
/* 80965270  4B 7E 06 28 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965274  93 19 0B 5C */	stw r24, 0xb5c(r25)
/* 80965278  38 00 00 03 */	li r0, 3
/* 8096527C  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 80965280  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80965284  D0 19 0B 68 */	stfs f0, 0xb68(r25)
lbl_80965288:
/* 80965288  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 8096528C  2C 00 00 14 */	cmpwi r0, 0x14
/* 80965290  41 82 00 90 */	beq lbl_80965320
/* 80965294  83 19 0B 80 */	lwz r24, 0xb80(r25)
/* 80965298  38 79 0B 74 */	addi r3, r25, 0xb74
/* 8096529C  4B 7E 05 FC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809652A0  93 19 0B 80 */	stw r24, 0xb80(r25)
/* 809652A4  38 00 00 14 */	li r0, 0x14
/* 809652A8  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 809652AC  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 809652B0  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
/* 809652B4  48 00 00 6C */	b lbl_80965320
lbl_809652B8:
/* 809652B8  80 19 0B 58 */	lwz r0, 0xb58(r25)
/* 809652BC  2C 00 00 00 */	cmpwi r0, 0
/* 809652C0  41 82 00 24 */	beq lbl_809652E4
/* 809652C4  83 19 0B 5C */	lwz r24, 0xb5c(r25)
/* 809652C8  38 79 0B 50 */	addi r3, r25, 0xb50
/* 809652CC  4B 7E 05 CC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809652D0  93 19 0B 5C */	stw r24, 0xb5c(r25)
/* 809652D4  38 00 00 00 */	li r0, 0
/* 809652D8  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 809652DC  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 809652E0  D0 19 0B 68 */	stfs f0, 0xb68(r25)
lbl_809652E4:
/* 809652E4  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 809652E8  2C 00 00 0F */	cmpwi r0, 0xf
/* 809652EC  41 82 00 24 */	beq lbl_80965310
/* 809652F0  83 19 0B 80 */	lwz r24, 0xb80(r25)
/* 809652F4  38 79 0B 74 */	addi r3, r25, 0xb74
/* 809652F8  4B 7E 05 A0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809652FC  93 19 0B 80 */	stw r24, 0xb80(r25)
/* 80965300  38 00 00 0F */	li r0, 0xf
/* 80965304  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 80965308  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 8096530C  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
lbl_80965310:
/* 80965310  7F 23 CB 78 */	mr r3, r25
/* 80965314  38 80 00 0C */	li r4, 0xc
/* 80965318  38 A0 00 00 */	li r5, 0
/* 8096531C  4B 7E 68 D4 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80965320:
/* 80965320  2C 1B 00 04 */	cmpwi r27, 4
/* 80965324  41 82 04 04 */	beq lbl_80965728
/* 80965328  40 80 00 1C */	bge lbl_80965344
/* 8096532C  2C 1B 00 02 */	cmpwi r27, 2
/* 80965330  41 82 00 D0 */	beq lbl_80965400
/* 80965334  40 80 03 84 */	bge lbl_809656B8
/* 80965338  2C 1B 00 00 */	cmpwi r27, 0
/* 8096533C  40 80 00 18 */	bge lbl_80965354
/* 80965340  48 00 05 38 */	b lbl_80965878
lbl_80965344:
/* 80965344  2C 1B 00 06 */	cmpwi r27, 6
/* 80965348  41 82 04 C4 */	beq lbl_8096580C
/* 8096534C  40 80 05 2C */	bge lbl_80965878
/* 80965350  48 00 04 04 */	b lbl_80965754
lbl_80965354:
/* 80965354  80 19 0C E0 */	lwz r0, 0xce0(r25)
/* 80965358  2C 00 00 01 */	cmpwi r0, 1
/* 8096535C  41 82 00 28 */	beq lbl_80965384
/* 80965360  38 79 0B A8 */	addi r3, r25, 0xba8
/* 80965364  4B 7E 03 98 */	b remove__18daNpcT_ActorMngr_cFv
/* 80965368  38 00 00 00 */	li r0, 0
/* 8096536C  90 19 0B C8 */	stw r0, 0xbc8(r25)
/* 80965370  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80965374  D0 19 0C F4 */	stfs f0, 0xcf4(r25)
/* 80965378  98 19 0C FF */	stb r0, 0xcff(r25)
/* 8096537C  38 00 00 01 */	li r0, 1
/* 80965380  90 19 0C E0 */	stw r0, 0xce0(r25)
lbl_80965384:
/* 80965384  38 00 00 00 */	li r0, 0
/* 80965388  98 19 0C FF */	stb r0, 0xcff(r25)
/* 8096538C  88 19 12 00 */	lbz r0, 0x1200(r25)
/* 80965390  28 00 00 00 */	cmplwi r0, 0
/* 80965394  41 82 00 1C */	beq lbl_809653B0
/* 80965398  28 00 00 03 */	cmplwi r0, 3
/* 8096539C  41 82 00 14 */	beq lbl_809653B0
/* 809653A0  A8 99 0D C8 */	lha r4, 0xdc8(r25)
/* 809653A4  A8 19 0D 7A */	lha r0, 0xd7a(r25)
/* 809653A8  7C 04 00 00 */	cmpw r4, r0
/* 809653AC  40 82 00 38 */	bne lbl_809653E4
lbl_809653B0:
/* 809653B0  7F 23 CB 78 */	mr r3, r25
/* 809653B4  38 80 00 00 */	li r4, 0
/* 809653B8  38 A0 00 00 */	li r5, 0
/* 809653BC  38 C0 00 00 */	li r6, 0
/* 809653C0  38 E0 00 00 */	li r7, 0
/* 809653C4  4B 7E 68 B4 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809653C8  2C 03 00 00 */	cmpwi r3, 0
/* 809653CC  41 82 04 AC */	beq lbl_80965878
/* 809653D0  88 19 09 9A */	lbz r0, 0x99a(r25)
/* 809653D4  28 00 00 01 */	cmplwi r0, 1
/* 809653D8  40 82 04 A0 */	bne lbl_80965878
/* 809653DC  3B 80 00 01 */	li r28, 1
/* 809653E0  48 00 04 98 */	b lbl_80965878
lbl_809653E4:
/* 809653E4  7F 23 CB 78 */	mr r3, r25
/* 809653E8  38 A0 FF FF */	li r5, -1
/* 809653EC  38 C0 FF FF */	li r6, -1
/* 809653F0  38 E0 00 0F */	li r7, 0xf
/* 809653F4  39 00 00 00 */	li r8, 0
/* 809653F8  4B 7E 62 50 */	b step__8daNpcT_cFsiiii
/* 809653FC  48 00 04 7C */	b lbl_80965878
lbl_80965400:
/* 80965400  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 80965404  2C 00 00 11 */	cmpwi r0, 0x11
/* 80965408  41 82 00 0C */	beq lbl_80965414
/* 8096540C  2C 00 00 14 */	cmpwi r0, 0x14
/* 80965410  40 82 02 A0 */	bne lbl_809656B0
lbl_80965414:
/* 80965414  38 79 0B 74 */	addi r3, r25, 0xb74
/* 80965418  4B 7E 06 0C */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 8096541C  2C 03 00 00 */	cmpwi r3, 0
/* 80965420  41 82 02 1C */	beq lbl_8096563C
/* 80965424  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80965428  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8096542C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80965430  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80965434  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80965438  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 8096543C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80965440  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80965444  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80965448  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 8096544C  EC 01 00 2A */	fadds f0, f1, f0
/* 80965450  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80965454  88 19 04 E2 */	lbz r0, 0x4e2(r25)
/* 80965458  7C 03 07 74 */	extsb r3, r0
/* 8096545C  4B 6C 7C 10 */	b dComIfGp_getReverb__Fi
/* 80965460  7C 67 1B 78 */	mr r7, r3
/* 80965464  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060055@ha */
/* 80965468  38 03 00 55 */	addi r0, r3, 0x0055 /* 0x00060055@l */
/* 8096546C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80965470  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80965474  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80965478  80 63 00 00 */	lwz r3, 0(r3)
/* 8096547C  38 81 00 0C */	addi r4, r1, 0xc
/* 80965480  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80965484  38 C0 00 00 */	li r6, 0
/* 80965488  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 8096548C  FC 40 08 90 */	fmr f2, f1
/* 80965490  C0 7E 00 E0 */	lfs f3, 0xe0(r30)
/* 80965494  FC 80 18 90 */	fmr f4, f3
/* 80965498  39 00 00 00 */	li r8, 0
/* 8096549C  4B 94 64 E8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 809654A0  7F 23 CB 78 */	mr r3, r25
/* 809654A4  4B FF FA A5 */	bl setPrtcls__12daNpc_Bans_cFv
/* 809654A8  88 19 12 00 */	lbz r0, 0x1200(r25)
/* 809654AC  28 00 00 04 */	cmplwi r0, 4
/* 809654B0  40 82 00 CC */	bne lbl_8096557C
/* 809654B4  38 60 00 39 */	li r3, 0x39
/* 809654B8  4B 7E 76 B4 */	b daNpcT_chkTmpBit__FUl
/* 809654BC  2C 03 00 00 */	cmpwi r3, 0
/* 809654C0  41 82 00 60 */	beq lbl_80965520
/* 809654C4  80 19 0B 58 */	lwz r0, 0xb58(r25)
/* 809654C8  2C 00 00 02 */	cmpwi r0, 2
/* 809654CC  41 82 00 24 */	beq lbl_809654F0
/* 809654D0  83 19 0B 5C */	lwz r24, 0xb5c(r25)
/* 809654D4  38 79 0B 50 */	addi r3, r25, 0xb50
/* 809654D8  4B 7E 03 C0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809654DC  93 19 0B 5C */	stw r24, 0xb5c(r25)
/* 809654E0  38 00 00 02 */	li r0, 2
/* 809654E4  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 809654E8  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 809654EC  D0 19 0B 68 */	stfs f0, 0xb68(r25)
lbl_809654F0:
/* 809654F0  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 809654F4  2C 00 00 08 */	cmpwi r0, 8
/* 809654F8  41 82 03 80 */	beq lbl_80965878
/* 809654FC  83 19 0B 80 */	lwz r24, 0xb80(r25)
/* 80965500  38 79 0B 74 */	addi r3, r25, 0xb74
/* 80965504  4B 7E 03 94 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965508  93 19 0B 80 */	stw r24, 0xb80(r25)
/* 8096550C  38 00 00 08 */	li r0, 8
/* 80965510  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 80965514  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80965518  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
/* 8096551C  48 00 03 5C */	b lbl_80965878
lbl_80965520:
/* 80965520  80 19 0B 58 */	lwz r0, 0xb58(r25)
/* 80965524  2C 00 00 03 */	cmpwi r0, 3
/* 80965528  41 82 00 24 */	beq lbl_8096554C
/* 8096552C  83 19 0B 5C */	lwz r24, 0xb5c(r25)
/* 80965530  38 79 0B 50 */	addi r3, r25, 0xb50
/* 80965534  4B 7E 03 64 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965538  93 19 0B 5C */	stw r24, 0xb5c(r25)
/* 8096553C  38 00 00 03 */	li r0, 3
/* 80965540  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 80965544  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80965548  D0 19 0B 68 */	stfs f0, 0xb68(r25)
lbl_8096554C:
/* 8096554C  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 80965550  2C 00 00 07 */	cmpwi r0, 7
/* 80965554  41 82 03 24 */	beq lbl_80965878
/* 80965558  83 19 0B 80 */	lwz r24, 0xb80(r25)
/* 8096555C  38 79 0B 74 */	addi r3, r25, 0xb74
/* 80965560  4B 7E 03 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965564  93 19 0B 80 */	stw r24, 0xb80(r25)
/* 80965568  38 00 00 07 */	li r0, 7
/* 8096556C  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 80965570  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80965574  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
/* 80965578  48 00 03 00 */	b lbl_80965878
lbl_8096557C:
/* 8096557C  28 00 00 03 */	cmplwi r0, 3
/* 80965580  40 82 00 60 */	bne lbl_809655E0
/* 80965584  80 19 0B 58 */	lwz r0, 0xb58(r25)
/* 80965588  2C 00 00 03 */	cmpwi r0, 3
/* 8096558C  41 82 00 24 */	beq lbl_809655B0
/* 80965590  83 19 0B 5C */	lwz r24, 0xb5c(r25)
/* 80965594  38 79 0B 50 */	addi r3, r25, 0xb50
/* 80965598  4B 7E 03 00 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096559C  93 19 0B 5C */	stw r24, 0xb5c(r25)
/* 809655A0  38 00 00 03 */	li r0, 3
/* 809655A4  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 809655A8  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 809655AC  D0 19 0B 68 */	stfs f0, 0xb68(r25)
lbl_809655B0:
/* 809655B0  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 809655B4  2C 00 00 0B */	cmpwi r0, 0xb
/* 809655B8  41 82 02 C0 */	beq lbl_80965878
/* 809655BC  83 19 0B 80 */	lwz r24, 0xb80(r25)
/* 809655C0  38 79 0B 74 */	addi r3, r25, 0xb74
/* 809655C4  4B 7E 02 D4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809655C8  93 19 0B 80 */	stw r24, 0xb80(r25)
/* 809655CC  38 00 00 0B */	li r0, 0xb
/* 809655D0  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 809655D4  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 809655D8  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
/* 809655DC  48 00 02 9C */	b lbl_80965878
lbl_809655E0:
/* 809655E0  80 19 0B 58 */	lwz r0, 0xb58(r25)
/* 809655E4  2C 00 00 03 */	cmpwi r0, 3
/* 809655E8  41 82 00 24 */	beq lbl_8096560C
/* 809655EC  83 19 0B 5C */	lwz r24, 0xb5c(r25)
/* 809655F0  38 79 0B 50 */	addi r3, r25, 0xb50
/* 809655F4  4B 7E 02 A4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809655F8  93 19 0B 5C */	stw r24, 0xb5c(r25)
/* 809655FC  38 00 00 03 */	li r0, 3
/* 80965600  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 80965604  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80965608  D0 19 0B 68 */	stfs f0, 0xb68(r25)
lbl_8096560C:
/* 8096560C  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 80965610  2C 00 00 00 */	cmpwi r0, 0
/* 80965614  41 82 02 64 */	beq lbl_80965878
/* 80965618  83 19 0B 80 */	lwz r24, 0xb80(r25)
/* 8096561C  38 79 0B 74 */	addi r3, r25, 0xb74
/* 80965620  4B 7E 02 78 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965624  93 19 0B 80 */	stw r24, 0xb80(r25)
/* 80965628  38 00 00 00 */	li r0, 0
/* 8096562C  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 80965630  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80965634  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
/* 80965638  48 00 02 40 */	b lbl_80965878
lbl_8096563C:
/* 8096563C  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 80965640  2C 00 00 11 */	cmpwi r0, 0x11
/* 80965644  40 82 00 1C */	bne lbl_80965660
/* 80965648  80 79 05 78 */	lwz r3, 0x578(r25)
/* 8096564C  38 63 00 0C */	addi r3, r3, 0xc
/* 80965650  C0 3E 01 44 */	lfs f1, 0x144(r30)
/* 80965654  4B 9C 2D D8 */	b checkPass__12J3DFrameCtrlFf
/* 80965658  2C 03 00 00 */	cmpwi r3, 0
/* 8096565C  40 82 00 28 */	bne lbl_80965684
lbl_80965660:
/* 80965660  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 80965664  2C 00 00 14 */	cmpwi r0, 0x14
/* 80965668  40 82 02 10 */	bne lbl_80965878
/* 8096566C  80 79 05 78 */	lwz r3, 0x578(r25)
/* 80965670  38 63 00 0C */	addi r3, r3, 0xc
/* 80965674  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 80965678  4B 9C 2D B4 */	b checkPass__12J3DFrameCtrlFf
/* 8096567C  2C 03 00 00 */	cmpwi r3, 0
/* 80965680  41 82 01 F8 */	beq lbl_80965878
lbl_80965684:
/* 80965684  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 80965688  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8096568C  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 80965690  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80965694  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80965698  38 7F 5B D4 */	addi r3, r31, 0x5bd4
/* 8096569C  38 80 00 05 */	li r4, 5
/* 809656A0  38 A0 00 0F */	li r5, 0xf
/* 809656A4  38 C1 00 10 */	addi r6, r1, 0x10
/* 809656A8  4B 70 A3 7C */	b StartShock__12dVibration_cFii4cXyz
/* 809656AC  48 00 01 CC */	b lbl_80965878
lbl_809656B0:
/* 809656B0  3B 80 00 01 */	li r28, 1
/* 809656B4  48 00 01 C4 */	b lbl_80965878
lbl_809656B8:
/* 809656B8  88 19 12 68 */	lbz r0, 0x1268(r25)
/* 809656BC  28 00 00 00 */	cmplwi r0, 0
/* 809656C0  40 82 00 18 */	bne lbl_809656D8
/* 809656C4  7F A3 EB 78 */	mr r3, r29
/* 809656C8  7F 44 D3 78 */	mr r4, r26
/* 809656CC  4B 6E 26 80 */	b getIsAddvance__16dEvent_manager_cFi
/* 809656D0  2C 03 00 00 */	cmpwi r3, 0
/* 809656D4  41 82 00 3C */	beq lbl_80965710
lbl_809656D8:
/* 809656D8  38 79 12 68 */	addi r3, r25, 0x1268
/* 809656DC  48 00 23 19 */	bl func_809679F4
/* 809656E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809656E4  40 82 00 2C */	bne lbl_80965710
/* 809656E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809656EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809656F0  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 809656F4  80 04 05 8C */	lwz r0, 0x58c(r4)
/* 809656F8  64 00 00 02 */	oris r0, r0, 2
/* 809656FC  90 04 05 8C */	stw r0, 0x58c(r4)
/* 80965700  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80965704  80 03 05 78 */	lwz r0, 0x578(r3)
/* 80965708  64 00 10 00 */	oris r0, r0, 0x1000
/* 8096570C  90 03 05 78 */	stw r0, 0x578(r3)
lbl_80965710:
/* 80965710  38 79 0D C4 */	addi r3, r25, 0xdc4
/* 80965714  48 00 22 C5 */	bl func_809679D8
/* 80965718  2C 03 00 00 */	cmpwi r3, 0
/* 8096571C  40 82 01 5C */	bne lbl_80965878
/* 80965720  3B 80 00 01 */	li r28, 1
/* 80965724  48 00 01 54 */	b lbl_80965878
lbl_80965728:
/* 80965728  7F 23 CB 78 */	mr r3, r25
/* 8096572C  81 99 0E 3C */	lwz r12, 0xe3c(r25)
/* 80965730  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80965734  7D 89 03 A6 */	mtctr r12
/* 80965738  4E 80 04 21 */	bctrl 
/* 8096573C  38 79 0D C4 */	addi r3, r25, 0xdc4
/* 80965740  48 00 22 99 */	bl func_809679D8
/* 80965744  2C 03 00 00 */	cmpwi r3, 0
/* 80965748  40 82 01 30 */	bne lbl_80965878
/* 8096574C  3B 80 00 01 */	li r28, 1
/* 80965750  48 00 01 28 */	b lbl_80965878
lbl_80965754:
/* 80965754  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 80965758  2C 00 00 14 */	cmpwi r0, 0x14
/* 8096575C  40 82 00 A8 */	bne lbl_80965804
/* 80965760  80 19 0C E0 */	lwz r0, 0xce0(r25)
/* 80965764  2C 00 00 00 */	cmpwi r0, 0
/* 80965768  41 82 00 24 */	beq lbl_8096578C
/* 8096576C  38 79 0B A8 */	addi r3, r25, 0xba8
/* 80965770  4B 7D FF 8C */	b remove__18daNpcT_ActorMngr_cFv
/* 80965774  38 00 00 00 */	li r0, 0
/* 80965778  90 19 0B C8 */	stw r0, 0xbc8(r25)
/* 8096577C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80965780  D0 19 0C F4 */	stfs f0, 0xcf4(r25)
/* 80965784  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80965788  90 19 0C E0 */	stw r0, 0xce0(r25)
lbl_8096578C:
/* 8096578C  38 00 00 00 */	li r0, 0
/* 80965790  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80965794  38 79 0B 74 */	addi r3, r25, 0xb74
/* 80965798  4B 7E 02 8C */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 8096579C  2C 03 00 00 */	cmpwi r3, 0
/* 809657A0  41 82 00 D8 */	beq lbl_80965878
/* 809657A4  80 19 0B 58 */	lwz r0, 0xb58(r25)
/* 809657A8  2C 00 00 03 */	cmpwi r0, 3
/* 809657AC  41 82 00 24 */	beq lbl_809657D0
/* 809657B0  83 19 0B 5C */	lwz r24, 0xb5c(r25)
/* 809657B4  38 79 0B 50 */	addi r3, r25, 0xb50
/* 809657B8  4B 7E 00 E0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809657BC  93 19 0B 5C */	stw r24, 0xb5c(r25)
/* 809657C0  38 00 00 03 */	li r0, 3
/* 809657C4  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 809657C8  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 809657CC  D0 19 0B 68 */	stfs f0, 0xb68(r25)
lbl_809657D0:
/* 809657D0  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 809657D4  2C 00 00 0F */	cmpwi r0, 0xf
/* 809657D8  41 82 00 24 */	beq lbl_809657FC
/* 809657DC  83 19 0B 80 */	lwz r24, 0xb80(r25)
/* 809657E0  38 79 0B 74 */	addi r3, r25, 0xb74
/* 809657E4  4B 7E 00 B4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809657E8  93 19 0B 80 */	stw r24, 0xb80(r25)
/* 809657EC  38 00 00 0F */	li r0, 0xf
/* 809657F0  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 809657F4  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 809657F8  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
lbl_809657FC:
/* 809657FC  3B 80 00 01 */	li r28, 1
/* 80965800  48 00 00 78 */	b lbl_80965878
lbl_80965804:
/* 80965804  3B 80 00 01 */	li r28, 1
/* 80965808  48 00 00 70 */	b lbl_80965878
lbl_8096580C:
/* 8096580C  80 19 0C E0 */	lwz r0, 0xce0(r25)
/* 80965810  2C 00 00 01 */	cmpwi r0, 1
/* 80965814  41 82 00 28 */	beq lbl_8096583C
/* 80965818  38 79 0B A8 */	addi r3, r25, 0xba8
/* 8096581C  4B 7D FE E0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80965820  38 00 00 00 */	li r0, 0
/* 80965824  90 19 0B C8 */	stw r0, 0xbc8(r25)
/* 80965828  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 8096582C  D0 19 0C F4 */	stfs f0, 0xcf4(r25)
/* 80965830  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80965834  38 00 00 01 */	li r0, 1
/* 80965838  90 19 0C E0 */	stw r0, 0xce0(r25)
lbl_8096583C:
/* 8096583C  38 00 00 00 */	li r0, 0
/* 80965840  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80965844  98 19 0E 26 */	stb r0, 0xe26(r25)
/* 80965848  7F 23 CB 78 */	mr r3, r25
/* 8096584C  38 80 00 00 */	li r4, 0
/* 80965850  38 A0 00 00 */	li r5, 0
/* 80965854  38 C0 00 00 */	li r6, 0
/* 80965858  38 E0 00 00 */	li r7, 0
/* 8096585C  4B 7E 64 1C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80965860  2C 03 00 00 */	cmpwi r3, 0
/* 80965864  41 82 00 14 */	beq lbl_80965878
/* 80965868  88 19 09 9A */	lbz r0, 0x99a(r25)
/* 8096586C  28 00 00 01 */	cmplwi r0, 1
/* 80965870  40 82 00 08 */	bne lbl_80965878
/* 80965874  3B 80 00 01 */	li r28, 1
lbl_80965878:
/* 80965878  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 8096587C  2C 00 00 14 */	cmpwi r0, 0x14
/* 80965880  40 82 00 5C */	bne lbl_809658DC
/* 80965884  80 79 05 78 */	lwz r3, 0x578(r25)
/* 80965888  38 63 00 0C */	addi r3, r3, 0xc
/* 8096588C  C0 3E 01 48 */	lfs f1, 0x148(r30)
/* 80965890  4B 9C 2B 9C */	b checkPass__12J3DFrameCtrlFf
/* 80965894  2C 03 00 00 */	cmpwi r3, 0
/* 80965898  41 82 00 44 */	beq lbl_809658DC
/* 8096589C  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006005F@ha */
/* 809658A0  38 03 00 5F */	addi r0, r3, 0x005F /* 0x0006005F@l */
/* 809658A4  90 01 00 08 */	stw r0, 8(r1)
/* 809658A8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 809658AC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 809658B0  80 63 00 00 */	lwz r3, 0(r3)
/* 809658B4  38 81 00 08 */	addi r4, r1, 8
/* 809658B8  38 B9 04 D0 */	addi r5, r25, 0x4d0
/* 809658BC  38 C0 00 00 */	li r6, 0
/* 809658C0  38 E0 00 00 */	li r7, 0
/* 809658C4  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 809658C8  FC 40 08 90 */	fmr f2, f1
/* 809658CC  C0 7E 00 E0 */	lfs f3, 0xe0(r30)
/* 809658D0  FC 80 18 90 */	fmr f4, f3
/* 809658D4  39 00 00 00 */	li r8, 0
/* 809658D8  4B 94 60 AC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_809658DC:
/* 809658DC  7F 83 E3 78 */	mr r3, r28
/* 809658E0  39 61 00 50 */	addi r11, r1, 0x50
/* 809658E4  4B 9F C9 30 */	b _restgpr_24
/* 809658E8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 809658EC  7C 08 03 A6 */	mtlr r0
/* 809658F0  38 21 00 50 */	addi r1, r1, 0x50
/* 809658F4  4E 80 00 20 */	blr 
