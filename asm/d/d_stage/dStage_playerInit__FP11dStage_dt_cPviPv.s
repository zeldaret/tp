lbl_80025014:
/* 80025014  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80025018  7C 08 02 A6 */	mflr r0
/* 8002501C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80025020  39 61 00 20 */	addi r11, r1, 0x20
/* 80025024  48 33 D1 B5 */	bl _savegpr_28
/* 80025028  7C 7D 1B 78 */	mr r29, r3
/* 8002502C  7C BC 2B 78 */	mr r28, r5
/* 80025030  38 84 00 04 */	addi r4, r4, 4
/* 80025034  83 C4 00 04 */	lwz r30, 4(r4)
/* 80025038  81 83 00 00 */	lwz r12, 0(r3)
/* 8002503C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80025040  7D 89 03 A6 */	mtctr r12
/* 80025044  4E 80 04 21 */	bctrl 
/* 80025048  7F A3 EB 78 */	mr r3, r29
/* 8002504C  57 84 04 3E */	clrlwi r4, r28, 0x10
/* 80025050  81 9D 00 00 */	lwz r12, 0(r29)
/* 80025054  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80025058  7D 89 03 A6 */	mtctr r12
/* 8002505C  4E 80 04 21 */	bctrl 
/* 80025060  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80025064  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80025068  80 1F 5D AC */	lwz r0, 0x5dac(r31)
/* 8002506C  28 00 00 00 */	cmplwi r0, 0
/* 80025070  40 82 00 1C */	bne lbl_8002508C
/* 80025074  88 1F 4E 0A */	lbz r0, 0x4e0a(r31)
/* 80025078  7C 03 07 74 */	extsb r3, r0
/* 8002507C  88 1D 00 04 */	lbz r0, 4(r29)
/* 80025080  7C 00 07 74 */	extsb r0, r0
/* 80025084  7C 03 00 00 */	cmpw r3, r0
/* 80025088  41 82 00 0C */	beq lbl_80025094
lbl_8002508C:
/* 8002508C  38 60 00 01 */	li r3, 1
/* 80025090  48 00 02 10 */	b lbl_800252A0
lbl_80025094:
/* 80025094  4B FF 4A 15 */	bl fopAcM_CreateAppend__Fv
/* 80025098  7C 7D 1B 78 */	mr r29, r3
/* 8002509C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800250A0  38 C3 61 C0 */	addi r6, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800250A4  A8 66 4E 08 */	lha r3, 0x4e08(r6)
/* 800250A8  80 86 0D C8 */	lwz r4, 0xdc8(r6)
/* 800250AC  2C 03 FF FE */	cmpwi r3, -2
/* 800250B0  41 82 00 0C */	beq lbl_800250BC
/* 800250B4  2C 03 FF FD */	cmpwi r3, -3
/* 800250B8  40 82 00 48 */	bne lbl_80025100
lbl_800250BC:
/* 800250BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800250C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800250C4  80 03 0E E4 */	lwz r0, 0xee4(r3)
/* 800250C8  90 1D 00 00 */	stw r0, 0(r29)
/* 800250CC  C0 03 0E D8 */	lfs f0, 0xed8(r3)
/* 800250D0  D0 1D 00 04 */	stfs f0, 4(r29)
/* 800250D4  C0 03 0E DC */	lfs f0, 0xedc(r3)
/* 800250D8  D0 1D 00 08 */	stfs f0, 8(r29)
/* 800250DC  C0 03 0E E0 */	lfs f0, 0xee0(r3)
/* 800250E0  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 800250E4  A8 63 0E E8 */	lha r3, 0xee8(r3)
/* 800250E8  38 00 00 00 */	li r0, 0
/* 800250EC  B0 1D 00 10 */	sth r0, 0x10(r29)
/* 800250F0  B0 7D 00 12 */	sth r3, 0x12(r29)
/* 800250F4  38 00 FF 00 */	li r0, -256
/* 800250F8  B0 1D 00 14 */	sth r0, 0x14(r29)
/* 800250FC  48 00 01 0C */	b lbl_80025208
lbl_80025100:
/* 80025100  2C 03 FF FF */	cmpwi r3, -1
/* 80025104  40 82 00 3C */	bne lbl_80025140
/* 80025108  90 9D 00 00 */	stw r4, 0(r29)
/* 8002510C  C0 06 0D BC */	lfs f0, 0xdbc(r6)
/* 80025110  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80025114  C0 06 0D C0 */	lfs f0, 0xdc0(r6)
/* 80025118  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8002511C  C0 06 0D C4 */	lfs f0, 0xdc4(r6)
/* 80025120  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 80025124  A8 66 0D BA */	lha r3, 0xdba(r6)
/* 80025128  38 00 00 00 */	li r0, 0
/* 8002512C  B0 1D 00 10 */	sth r0, 0x10(r29)
/* 80025130  B0 7D 00 12 */	sth r3, 0x12(r29)
/* 80025134  38 00 FF 00 */	li r0, -256
/* 80025138  B0 1D 00 14 */	sth r0, 0x14(r29)
/* 8002513C  48 00 00 CC */	b lbl_80025208
lbl_80025140:
/* 80025140  2C 03 FF FC */	cmpwi r3, -4
/* 80025144  40 82 00 0C */	bne lbl_80025150
/* 80025148  A8 A6 0E E8 */	lha r5, 0xee8(r6)
/* 8002514C  48 00 00 08 */	b lbl_80025154
lbl_80025150:
/* 80025150  7C 65 1B 78 */	mr r5, r3
lbl_80025154:
/* 80025154  7F 89 03 A6 */	mtctr r28
/* 80025158  2C 1C 00 00 */	cmpwi r28, 0
/* 8002515C  40 81 00 1C */	ble lbl_80025178
lbl_80025160:
/* 80025160  A8 1E 00 1C */	lha r0, 0x1c(r30)
/* 80025164  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80025168  7C 00 28 00 */	cmpw r0, r5
/* 8002516C  41 82 00 0C */	beq lbl_80025178
/* 80025170  3B DE 00 20 */	addi r30, r30, 0x20
/* 80025174  42 00 FF EC */	bdnz lbl_80025160
lbl_80025178:
/* 80025178  80 1E 00 08 */	lwz r0, 8(r30)
/* 8002517C  90 1D 00 00 */	stw r0, 0(r29)
/* 80025180  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80025184  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80025188  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8002518C  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80025190  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80025194  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 80025198  A8 1E 00 18 */	lha r0, 0x18(r30)
/* 8002519C  B0 1D 00 10 */	sth r0, 0x10(r29)
/* 800251A0  A8 1E 00 1A */	lha r0, 0x1a(r30)
/* 800251A4  B0 1D 00 12 */	sth r0, 0x12(r29)
/* 800251A8  A8 1E 00 1C */	lha r0, 0x1c(r30)
/* 800251AC  B0 1D 00 14 */	sth r0, 0x14(r29)
/* 800251B0  A0 1E 00 1E */	lhz r0, 0x1e(r30)
/* 800251B4  B0 1D 00 16 */	sth r0, 0x16(r29)
/* 800251B8  2C 03 FF FC */	cmpwi r3, -4
/* 800251BC  40 82 00 18 */	bne lbl_800251D4
/* 800251C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800251C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800251C8  80 03 0E E4 */	lwz r0, 0xee4(r3)
/* 800251CC  90 1D 00 00 */	stw r0, 0(r29)
/* 800251D0  48 00 00 38 */	b lbl_80025208
lbl_800251D4:
/* 800251D4  28 04 00 00 */	cmplwi r4, 0
/* 800251D8  41 82 00 18 */	beq lbl_800251F0
/* 800251DC  88 1F 4E 0A */	lbz r0, 0x4e0a(r31)
/* 800251E0  7C 00 07 74 */	extsb r0, r0
/* 800251E4  50 80 00 32 */	rlwimi r0, r4, 0, 0, 0x19
/* 800251E8  90 1D 00 00 */	stw r0, 0(r29)
/* 800251EC  48 00 00 1C */	b lbl_80025208
lbl_800251F0:
/* 800251F0  40 82 00 18 */	bne lbl_80025208
/* 800251F4  80 7D 00 00 */	lwz r3, 0(r29)
/* 800251F8  88 1F 4E 0A */	lbz r0, 0x4e0a(r31)
/* 800251FC  7C 00 07 74 */	extsb r0, r0
/* 80025200  50 60 00 32 */	rlwimi r0, r3, 0, 0, 0x19
/* 80025204  90 1D 00 00 */	stw r0, 0(r29)
lbl_80025208:
/* 80025208  38 00 00 00 */	li r0, 0
/* 8002520C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80025210  38 E3 61 C0 */	addi r7, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80025214  90 07 0D C8 */	stw r0, 0xdc8(r7)
/* 80025218  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8002521C  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80025220  B0 1D 00 16 */	sth r0, 0x16(r29)
/* 80025224  38 00 FF FF */	li r0, -1
/* 80025228  98 1D 00 21 */	stb r0, 0x21(r29)
/* 8002522C  3B E7 4E 00 */	addi r31, r7, 0x4e00
/* 80025230  7F E3 FB 78 */	mr r3, r31
/* 80025234  7F E4 FB 78 */	mr r4, r31
/* 80025238  80 1D 00 00 */	lwz r0, 0(r29)
/* 8002523C  54 05 06 BE */	clrlwi r5, r0, 0x1a
/* 80025240  A8 C6 4E 08 */	lha r6, 0x4e08(r6)
/* 80025244  88 07 4E 0B */	lbz r0, 0x4e0b(r7)
/* 80025248  7C 07 07 74 */	extsb r7, r0
/* 8002524C  4B FF EF 51 */	bl set__19dStage_startStage_cFPCcScsSc
/* 80025250  7F C3 F3 78 */	mr r3, r30
/* 80025254  7F A4 EB 78 */	mr r4, r29
/* 80025258  4B FF FC A5 */	bl dStage_actorCreate__FP22stage_actor_data_classP16fopAcM_prm_class
/* 8002525C  80 6D 87 E0 */	lwz r3, mProcID__20dStage_roomControl_c(r13)
/* 80025260  4B FF 9A 51 */	bl fopScnM_SearchByID__FUi
/* 80025264  A8 03 00 08 */	lha r0, 8(r3)
/* 80025268  2C 00 00 0B */	cmpwi r0, 0xb
/* 8002526C  40 82 00 30 */	bne lbl_8002529C
/* 80025270  7F E3 FB 78 */	mr r3, r31
/* 80025274  3C 80 80 38 */	lis r4, d_d_stage__stringBase0@ha /* 0x80378A50@ha */
/* 80025278  38 84 8A 50 */	addi r4, r4, d_d_stage__stringBase0@l /* 0x80378A50@l */
/* 8002527C  38 84 00 DB */	addi r4, r4, 0xdb
/* 80025280  48 34 37 15 */	bl strcmp
/* 80025284  2C 03 00 00 */	cmpwi r3, 0
/* 80025288  41 82 00 14 */	beq lbl_8002529C
/* 8002528C  38 60 03 16 */	li r3, 0x316
/* 80025290  38 80 00 00 */	li r4, 0
/* 80025294  38 A0 00 00 */	li r5, 0
/* 80025298  4B FF AE 71 */	bl fopMsgM_Create__FsPFPv_iPv
lbl_8002529C:
/* 8002529C  38 60 00 01 */	li r3, 1
lbl_800252A0:
/* 800252A0  39 61 00 20 */	addi r11, r1, 0x20
/* 800252A4  48 33 CF 81 */	bl _restgpr_28
/* 800252A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800252AC  7C 08 03 A6 */	mtlr r0
/* 800252B0  38 21 00 20 */	addi r1, r1, 0x20
/* 800252B4  4E 80 00 20 */	blr 
