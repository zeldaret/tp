lbl_80B22FAC:
/* 80B22FAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B22FB0  7C 08 02 A6 */	mflr r0
/* 80B22FB4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B22FB8  39 61 00 30 */	addi r11, r1, 0x30
/* 80B22FBC  4B 83 F2 18 */	b _savegpr_27
/* 80B22FC0  7C 7C 1B 78 */	mr r28, r3
/* 80B22FC4  3C 60 80 B2 */	lis r3, m__18daNpc_Toby_Param_c@ha
/* 80B22FC8  3B E3 49 E4 */	addi r31, r3, m__18daNpc_Toby_Param_c@l
/* 80B22FCC  38 7C 0F 90 */	addi r3, r28, 0xf90
/* 80B22FD0  4B 62 27 38 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B22FD4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B22FD8  3B A0 00 01 */	li r29, 1
/* 80B22FDC  41 82 00 0C */	beq lbl_80B22FE8
/* 80B22FE0  38 00 00 01 */	li r0, 1
/* 80B22FE4  98 1E 0B 31 */	stb r0, 0xb31(r30)
lbl_80B22FE8:
/* 80B22FE8  A0 1C 0E 22 */	lhz r0, 0xe22(r28)
/* 80B22FEC  2C 00 00 02 */	cmpwi r0, 2
/* 80B22FF0  41 82 00 D8 */	beq lbl_80B230C8
/* 80B22FF4  40 80 03 34 */	bge lbl_80B23328
/* 80B22FF8  2C 00 00 00 */	cmpwi r0, 0
/* 80B22FFC  40 80 00 0C */	bge lbl_80B23008
/* 80B23000  48 00 03 28 */	b lbl_80B23328
/* 80B23004  48 00 03 24 */	b lbl_80B23328
lbl_80B23008:
/* 80B23008  A8 1C 0D 1C */	lha r0, 0xd1c(r28)
/* 80B2300C  2C 00 00 00 */	cmpwi r0, 0
/* 80B23010  40 82 00 B8 */	bne lbl_80B230C8
/* 80B23014  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80B23018  2C 00 00 09 */	cmpwi r0, 9
/* 80B2301C  41 82 00 24 */	beq lbl_80B23040
/* 80B23020  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80B23024  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80B23028  4B 62 28 70 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2302C  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80B23030  38 00 00 09 */	li r0, 9
/* 80B23034  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80B23038  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B2303C  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80B23040:
/* 80B23040  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B23044  2C 00 00 13 */	cmpwi r0, 0x13
/* 80B23048  41 82 00 24 */	beq lbl_80B2306C
/* 80B2304C  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80B23050  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B23054  4B 62 28 44 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B23058  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80B2305C  38 00 00 13 */	li r0, 0x13
/* 80B23060  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B23064  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B23068  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80B2306C:
/* 80B2306C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050104@ha */
/* 80B23070  38 03 01 04 */	addi r0, r3, 0x0104 /* 0x00050104@l */
/* 80B23074  90 01 00 08 */	stw r0, 8(r1)
/* 80B23078  38 7C 05 80 */	addi r3, r28, 0x580
/* 80B2307C  38 81 00 08 */	addi r4, r1, 8
/* 80B23080  38 A0 FF FF */	li r5, -1
/* 80B23084  81 9C 05 80 */	lwz r12, 0x580(r28)
/* 80B23088  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B2308C  7D 89 03 A6 */	mtctr r12
/* 80B23090  4E 80 04 21 */	bctrl 
/* 80B23094  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80B23098  D0 1C 0F F8 */	stfs f0, 0xff8(r28)
/* 80B2309C  28 1E 00 00 */	cmplwi r30, 0
/* 80B230A0  41 82 00 20 */	beq lbl_80B230C0
/* 80B230A4  7F C3 F3 78 */	mr r3, r30
/* 80B230A8  38 80 00 00 */	li r4, 0
/* 80B230AC  38 A0 00 01 */	li r5, 1
/* 80B230B0  48 08 34 50 */	b setAnm__16daObj_AutoMata_cFib
/* 80B230B4  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B230B8  D0 1E 0B 2C */	stfs f0, 0xb2c(r30)
/* 80B230BC  3B A0 00 00 */	li r29, 0
lbl_80B230C0:
/* 80B230C0  38 00 00 02 */	li r0, 2
/* 80B230C4  B0 1C 0E 22 */	sth r0, 0xe22(r28)
lbl_80B230C8:
/* 80B230C8  A8 1C 0D 1C */	lha r0, 0xd1c(r28)
/* 80B230CC  2C 00 00 00 */	cmpwi r0, 0
/* 80B230D0  40 82 02 50 */	bne lbl_80B23320
/* 80B230D4  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B230D8  2C 00 00 13 */	cmpwi r0, 0x13
/* 80B230DC  40 82 00 84 */	bne lbl_80B23160
/* 80B230E0  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B230E4  4B 62 29 40 */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80B230E8  2C 03 00 00 */	cmpwi r3, 0
/* 80B230EC  41 82 00 6C */	beq lbl_80B23158
/* 80B230F0  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80B230F4  2C 00 00 06 */	cmpwi r0, 6
/* 80B230F8  41 82 00 24 */	beq lbl_80B2311C
/* 80B230FC  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80B23100  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80B23104  4B 62 27 94 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B23108  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80B2310C  38 00 00 06 */	li r0, 6
/* 80B23110  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80B23114  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B23118  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80B2311C:
/* 80B2311C  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B23120  2C 00 00 10 */	cmpwi r0, 0x10
/* 80B23124  41 82 00 24 */	beq lbl_80B23148
/* 80B23128  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80B2312C  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B23130  4B 62 27 68 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B23134  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80B23138  38 00 00 10 */	li r0, 0x10
/* 80B2313C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B23140  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B23144  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80B23148:
/* 80B23148  A0 1C 0E 1E */	lhz r0, 0xe1e(r28)
/* 80B2314C  B0 1C 0F FC */	sth r0, 0xffc(r28)
/* 80B23150  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80B23154  D0 1C 0F F8 */	stfs f0, 0xff8(r28)
lbl_80B23158:
/* 80B23158  3B A0 00 00 */	li r29, 0
/* 80B2315C  48 00 01 6C */	b lbl_80B232C8
lbl_80B23160:
/* 80B23160  2C 00 00 10 */	cmpwi r0, 0x10
/* 80B23164  40 82 00 A8 */	bne lbl_80B2320C
/* 80B23168  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B2316C  4B 62 28 B8 */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80B23170  2C 03 00 00 */	cmpwi r3, 0
/* 80B23174  41 82 01 54 */	beq lbl_80B232C8
/* 80B23178  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80B2317C  2C 00 00 07 */	cmpwi r0, 7
/* 80B23180  41 82 00 24 */	beq lbl_80B231A4
/* 80B23184  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80B23188  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80B2318C  4B 62 27 0C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B23190  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80B23194  38 00 00 07 */	li r0, 7
/* 80B23198  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80B2319C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B231A0  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80B231A4:
/* 80B231A4  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B231A8  2C 00 00 11 */	cmpwi r0, 0x11
/* 80B231AC  41 82 00 24 */	beq lbl_80B231D0
/* 80B231B0  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80B231B4  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B231B8  4B 62 26 E0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B231BC  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80B231C0  38 00 00 11 */	li r0, 0x11
/* 80B231C4  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B231C8  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B231CC  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80B231D0:
/* 80B231D0  A0 1C 0E 1E */	lhz r0, 0xe1e(r28)
/* 80B231D4  B0 1C 0F FC */	sth r0, 0xffc(r28)
/* 80B231D8  38 7F 00 00 */	addi r3, r31, 0
/* 80B231DC  C0 03 00 94 */	lfs f0, 0x94(r3)
/* 80B231E0  D0 1C 0F F8 */	stfs f0, 0xff8(r28)
/* 80B231E4  28 1E 00 00 */	cmplwi r30, 0
/* 80B231E8  41 82 00 E0 */	beq lbl_80B232C8
/* 80B231EC  7F C3 F3 78 */	mr r3, r30
/* 80B231F0  38 80 00 01 */	li r4, 1
/* 80B231F4  38 A0 00 01 */	li r5, 1
/* 80B231F8  48 08 33 08 */	b setAnm__16daObj_AutoMata_cFib
/* 80B231FC  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B23200  D0 1E 0B 2C */	stfs f0, 0xb2c(r30)
/* 80B23204  3B A0 00 00 */	li r29, 0
/* 80B23208  48 00 00 C0 */	b lbl_80B232C8
lbl_80B2320C:
/* 80B2320C  A0 7C 0F FC */	lhz r3, 0xffc(r28)
/* 80B23210  A0 1C 0E 1E */	lhz r0, 0xe1e(r28)
/* 80B23214  7C 03 00 40 */	cmplw r3, r0
/* 80B23218  41 82 00 B0 */	beq lbl_80B232C8
/* 80B2321C  38 7C 0F F8 */	addi r3, r28, 0xff8
/* 80B23220  38 9F 00 00 */	addi r4, r31, 0
/* 80B23224  C0 24 00 8C */	lfs f1, 0x8c(r4)
/* 80B23228  C0 44 00 90 */	lfs f2, 0x90(r4)
/* 80B2322C  4B 74 D5 14 */	b cLib_chaseF__FPfff
/* 80B23230  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B23234  2C 00 00 12 */	cmpwi r0, 0x12
/* 80B23238  41 82 00 74 */	beq lbl_80B232AC
/* 80B2323C  38 7F 00 00 */	addi r3, r31, 0
/* 80B23240  C0 23 00 98 */	lfs f1, 0x98(r3)
/* 80B23244  C0 1C 0F F8 */	lfs f0, 0xff8(r28)
/* 80B23248  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B2324C  4C 40 13 82 */	cror 2, 0, 2
/* 80B23250  40 82 00 5C */	bne lbl_80B232AC
/* 80B23254  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80B23258  2C 00 00 08 */	cmpwi r0, 8
/* 80B2325C  41 82 00 24 */	beq lbl_80B23280
/* 80B23260  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80B23264  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80B23268  4B 62 26 30 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2326C  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80B23270  38 00 00 08 */	li r0, 8
/* 80B23274  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80B23278  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B2327C  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80B23280:
/* 80B23280  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B23284  2C 00 00 12 */	cmpwi r0, 0x12
/* 80B23288  41 82 00 24 */	beq lbl_80B232AC
/* 80B2328C  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80B23290  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B23294  4B 62 26 04 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B23298  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80B2329C  38 00 00 12 */	li r0, 0x12
/* 80B232A0  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B232A4  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B232A8  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80B232AC:
/* 80B232AC  C0 1C 0F F8 */	lfs f0, 0xff8(r28)
/* 80B232B0  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80B232B4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B232B8  C0 1C 0F F8 */	lfs f0, 0xff8(r28)
/* 80B232BC  D0 1C 06 1C */	stfs f0, 0x61c(r28)
/* 80B232C0  C0 1C 0F F8 */	lfs f0, 0xff8(r28)
/* 80B232C4  D0 1C 06 38 */	stfs f0, 0x638(r28)
lbl_80B232C8:
/* 80B232C8  28 1E 00 00 */	cmplwi r30, 0
/* 80B232CC  41 82 00 18 */	beq lbl_80B232E4
/* 80B232D0  2C 1D 00 00 */	cmpwi r29, 0
/* 80B232D4  41 82 00 10 */	beq lbl_80B232E4
/* 80B232D8  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80B232DC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B232E0  D0 1E 0B 2C */	stfs f0, 0xb2c(r30)
lbl_80B232E4:
/* 80B232E4  A0 1C 0E 1E */	lhz r0, 0xe1e(r28)
/* 80B232E8  B0 1C 0F FC */	sth r0, 0xffc(r28)
/* 80B232EC  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B232F0  2C 00 00 00 */	cmpwi r0, 0
/* 80B232F4  41 82 00 24 */	beq lbl_80B23318
/* 80B232F8  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B232FC  4B 62 24 00 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B23300  38 00 00 00 */	li r0, 0
/* 80B23304  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B23308  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B2330C  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B23310  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B23314  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80B23318:
/* 80B23318  38 00 00 00 */	li r0, 0
/* 80B2331C  98 1C 0C FF */	stb r0, 0xcff(r28)
lbl_80B23320:
/* 80B23320  38 00 00 00 */	li r0, 0
/* 80B23324  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_80B23328:
/* 80B23328  38 60 00 01 */	li r3, 1
/* 80B2332C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B23330  4B 83 EE F0 */	b _restgpr_27
/* 80B23334  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B23338  7C 08 03 A6 */	mtlr r0
/* 80B2333C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B23340  4E 80 00 20 */	blr 
