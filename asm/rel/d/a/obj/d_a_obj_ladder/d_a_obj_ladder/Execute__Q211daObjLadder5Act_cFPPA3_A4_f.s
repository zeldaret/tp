lbl_8058DAA0:
/* 8058DAA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058DAA4  7C 08 02 A6 */	mflr r0
/* 8058DAA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058DAAC  39 61 00 20 */	addi r11, r1, 0x20
/* 8058DAB0  4B DD 47 2D */	bl _savegpr_29
/* 8058DAB4  7C 7D 1B 78 */	mr r29, r3
/* 8058DAB8  7C 9E 23 78 */	mr r30, r4
/* 8058DABC  3C 60 80 59 */	lis r3, cNullVec__6Z2Calc@ha /* 0x8058DDAC@ha */
/* 8058DAC0  3B E3 DD AC */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x8058DDAC@l */
/* 8058DAC4  3C 60 80 59 */	lis r3, data_8058DF50@ha /* 0x8058DF50@ha */
/* 8058DAC8  38 A3 DF 50 */	addi r5, r3, data_8058DF50@l /* 0x8058DF50@l */
/* 8058DACC  88 05 00 00 */	lbz r0, 0(r5)
/* 8058DAD0  7C 00 07 75 */	extsb. r0, r0
/* 8058DAD4  40 82 00 88 */	bne lbl_8058DB5C
/* 8058DAD8  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 8058DADC  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8058DAE0  90 7F 00 8C */	stw r3, 0x8c(r31)
/* 8058DAE4  90 1F 00 90 */	stw r0, 0x90(r31)
/* 8058DAE8  80 1F 00 58 */	lwz r0, 0x58(r31)
/* 8058DAEC  90 1F 00 94 */	stw r0, 0x94(r31)
/* 8058DAF0  38 9F 00 8C */	addi r4, r31, 0x8c
/* 8058DAF4  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 8058DAF8  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 8058DAFC  90 64 00 0C */	stw r3, 0xc(r4)
/* 8058DB00  90 04 00 10 */	stw r0, 0x10(r4)
/* 8058DB04  80 1F 00 64 */	lwz r0, 0x64(r31)
/* 8058DB08  90 04 00 14 */	stw r0, 0x14(r4)
/* 8058DB0C  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 8058DB10  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 8058DB14  90 64 00 18 */	stw r3, 0x18(r4)
/* 8058DB18  90 04 00 1C */	stw r0, 0x1c(r4)
/* 8058DB1C  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 8058DB20  90 04 00 20 */	stw r0, 0x20(r4)
/* 8058DB24  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8058DB28  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 8058DB2C  90 64 00 24 */	stw r3, 0x24(r4)
/* 8058DB30  90 04 00 28 */	stw r0, 0x28(r4)
/* 8058DB34  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 8058DB38  90 04 00 2C */	stw r0, 0x2c(r4)
/* 8058DB3C  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 8058DB40  80 1F 00 84 */	lwz r0, 0x84(r31)
/* 8058DB44  90 64 00 30 */	stw r3, 0x30(r4)
/* 8058DB48  90 04 00 34 */	stw r0, 0x34(r4)
/* 8058DB4C  80 1F 00 88 */	lwz r0, 0x88(r31)
/* 8058DB50  90 04 00 38 */	stw r0, 0x38(r4)
/* 8058DB54  38 00 00 01 */	li r0, 1
/* 8058DB58  98 05 00 00 */	stb r0, 0(r5)
lbl_8058DB5C:
/* 8058DB5C  7F A3 EB 78 */	mr r3, r29
/* 8058DB60  4B FF F9 E5 */	bl demo_end_reset__Q211daObjLadder5Act_cFv
/* 8058DB64  7F A3 EB 78 */	mr r3, r29
/* 8058DB68  80 1D 05 B0 */	lwz r0, 0x5b0(r29)
/* 8058DB6C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8058DB70  39 9F 00 8C */	addi r12, r31, 0x8c
/* 8058DB74  7D 8C 02 14 */	add r12, r12, r0
/* 8058DB78  4B DD 45 0D */	bl __ptmf_scall
/* 8058DB7C  60 00 00 00 */	nop 
/* 8058DB80  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8058DB84  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 8058DB88  7F A3 EB 78 */	mr r3, r29
/* 8058DB8C  4B FF FE 45 */	bl set_mtx__Q211daObjLadder5Act_cFv
/* 8058DB90  3C 60 80 59 */	lis r3, M_tmp_mtx__Q211daObjLadder5Act_c@ha /* 0x8058DF20@ha */
/* 8058DB94  38 03 DF 20 */	addi r0, r3, M_tmp_mtx__Q211daObjLadder5Act_c@l /* 0x8058DF20@l */
/* 8058DB98  90 1E 00 00 */	stw r0, 0(r30)
/* 8058DB9C  38 60 00 01 */	li r3, 1
/* 8058DBA0  39 61 00 20 */	addi r11, r1, 0x20
/* 8058DBA4  4B DD 46 85 */	bl _restgpr_29
/* 8058DBA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058DBAC  7C 08 03 A6 */	mtlr r0
/* 8058DBB0  38 21 00 20 */	addi r1, r1, 0x20
/* 8058DBB4  4E 80 00 20 */	blr 
