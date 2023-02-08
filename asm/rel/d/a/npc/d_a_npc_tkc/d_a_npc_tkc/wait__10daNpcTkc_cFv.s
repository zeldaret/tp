lbl_80B0DC68:
/* 80B0DC68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B0DC6C  7C 08 02 A6 */	mflr r0
/* 80B0DC70  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B0DC74  39 61 00 30 */	addi r11, r1, 0x30
/* 80B0DC78  4B 85 45 65 */	bl _savegpr_29
/* 80B0DC7C  7C 7E 1B 78 */	mr r30, r3
/* 80B0DC80  3C 80 80 B1 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B10A60@ha */
/* 80B0DC84  3B E4 0A 60 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80B10A60@l */
/* 80B0DC88  A0 03 0D 76 */	lhz r0, 0xd76(r3)
/* 80B0DC8C  2C 00 00 02 */	cmpwi r0, 2
/* 80B0DC90  41 82 00 44 */	beq lbl_80B0DCD4
/* 80B0DC94  40 80 02 4C */	bge lbl_80B0DEE0
/* 80B0DC98  2C 00 00 00 */	cmpwi r0, 0
/* 80B0DC9C  41 82 00 0C */	beq lbl_80B0DCA8
/* 80B0DCA0  48 00 02 40 */	b lbl_80B0DEE0
/* 80B0DCA4  48 00 02 3C */	b lbl_80B0DEE0
lbl_80B0DCA8:
/* 80B0DCA8  A8 1E 0D 74 */	lha r0, 0xd74(r30)
/* 80B0DCAC  2C 00 00 01 */	cmpwi r0, 1
/* 80B0DCB0  41 82 00 0C */	beq lbl_80B0DCBC
/* 80B0DCB4  38 00 00 01 */	li r0, 1
/* 80B0DCB8  B0 1E 0D 74 */	sth r0, 0xd74(r30)
lbl_80B0DCBC:
/* 80B0DCBC  3C 60 80 B1 */	lis r3, lit_4652@ha /* 0x80B1096C@ha */
/* 80B0DCC0  C0 03 09 6C */	lfs f0, lit_4652@l(r3)  /* 0x80B1096C@l */
/* 80B0DCC4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80B0DCC8  38 00 00 02 */	li r0, 2
/* 80B0DCCC  B0 1E 0D 76 */	sth r0, 0xd76(r30)
/* 80B0DCD0  48 00 02 10 */	b lbl_80B0DEE0
lbl_80B0DCD4:
/* 80B0DCD4  48 00 04 51 */	bl searchPlayer__10daNpcTkc_cFv
/* 80B0DCD8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B0DCDC  54 00 84 3F */	rlwinm. r0, r0, 0x10, 0x10, 0x1f
/* 80B0DCE0  41 82 00 18 */	beq lbl_80B0DCF8
/* 80B0DCE4  28 00 00 FF */	cmplwi r0, 0xff
/* 80B0DCE8  41 82 00 10 */	beq lbl_80B0DCF8
/* 80B0DCEC  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 80B0DCF0  60 00 00 01 */	ori r0, r0, 1
/* 80B0DCF4  B0 1E 00 FA */	sth r0, 0xfa(r30)
lbl_80B0DCF8:
/* 80B0DCF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0DCFC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0DD00  38 7D 4E 00 */	addi r3, r29, 0x4e00
/* 80B0DD04  3C 80 80 B1 */	lis r4, d_a_npc_tkc__stringBase0@ha /* 0x80B10A2C@ha */
/* 80B0DD08  38 84 0A 2C */	addi r4, r4, d_a_npc_tkc__stringBase0@l /* 0x80B10A2C@l */
/* 80B0DD0C  38 84 00 22 */	addi r4, r4, 0x22
/* 80B0DD10  4B 85 AC 85 */	bl strcmp
/* 80B0DD14  2C 03 00 00 */	cmpwi r3, 0
/* 80B0DD18  40 82 00 4C */	bne lbl_80B0DD64
/* 80B0DD1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0DD20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0DD24  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80B0DD28  2C 00 00 10 */	cmpwi r0, 0x10
/* 80B0DD2C  40 82 00 38 */	bne lbl_80B0DD64
/* 80B0DD30  38 60 01 0C */	li r3, 0x10c
/* 80B0DD34  4B 64 79 01 */	bl daNpcF_chkEvtBit__FUl
/* 80B0DD38  2C 03 00 00 */	cmpwi r3, 0
/* 80B0DD3C  40 82 00 28 */	bne lbl_80B0DD64
/* 80B0DD40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0DD44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0DD48  38 63 09 58 */	addi r3, r3, 0x958
/* 80B0DD4C  38 80 00 06 */	li r4, 6
/* 80B0DD50  4B 52 6B E5 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 80B0DD54  2C 03 00 00 */	cmpwi r3, 0
/* 80B0DD58  41 82 00 0C */	beq lbl_80B0DD64
/* 80B0DD5C  7F C3 F3 78 */	mr r3, r30
/* 80B0DD60  4B 50 BF 1D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80B0DD64:
/* 80B0DD64  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 80B0DD68  28 00 00 00 */	cmplwi r0, 0
/* 80B0DD6C  41 82 01 6C */	beq lbl_80B0DED8
/* 80B0DD70  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80B0DD74  28 00 00 01 */	cmplwi r0, 1
/* 80B0DD78  40 82 00 C4 */	bne lbl_80B0DE3C
/* 80B0DD7C  38 00 00 00 */	li r0, 0
/* 80B0DD80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0DD84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0DD88  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80B0DD8C  28 03 00 01 */	cmplwi r3, 1
/* 80B0DD90  41 82 00 0C */	beq lbl_80B0DD9C
/* 80B0DD94  28 03 00 02 */	cmplwi r3, 2
/* 80B0DD98  40 82 00 08 */	bne lbl_80B0DDA0
lbl_80B0DD9C:
/* 80B0DD9C  38 00 00 01 */	li r0, 1
lbl_80B0DDA0:
/* 80B0DDA0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B0DDA4  41 82 00 14 */	beq lbl_80B0DDB8
/* 80B0DDA8  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 80B0DDAC  4B 53 AA 45 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80B0DDB0  2C 03 00 00 */	cmpwi r3, 0
/* 80B0DDB4  41 82 01 24 */	beq lbl_80B0DED8
lbl_80B0DDB8:
/* 80B0DDB8  80 7F 01 20 */	lwz r3, 0x120(r31)
/* 80B0DDBC  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 80B0DDC0  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B0DDC4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B0DDC8  80 1F 01 28 */	lwz r0, 0x128(r31)
/* 80B0DDCC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B0DDD0  38 00 00 03 */	li r0, 3
/* 80B0DDD4  B0 1E 0D 76 */	sth r0, 0xd76(r30)
/* 80B0DDD8  38 7E 0D 20 */	addi r3, r30, 0xd20
/* 80B0DDDC  4B 85 42 3D */	bl __ptmf_test
/* 80B0DDE0  2C 03 00 00 */	cmpwi r3, 0
/* 80B0DDE4  41 82 00 14 */	beq lbl_80B0DDF8
/* 80B0DDE8  7F C3 F3 78 */	mr r3, r30
/* 80B0DDEC  39 9E 0D 20 */	addi r12, r30, 0xd20
/* 80B0DDF0  4B 85 42 95 */	bl __ptmf_scall
/* 80B0DDF4  60 00 00 00 */	nop 
lbl_80B0DDF8:
/* 80B0DDF8  38 00 00 00 */	li r0, 0
/* 80B0DDFC  B0 1E 0D 76 */	sth r0, 0xd76(r30)
/* 80B0DE00  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80B0DE04  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80B0DE08  90 7E 0D 20 */	stw r3, 0xd20(r30)
/* 80B0DE0C  90 1E 0D 24 */	stw r0, 0xd24(r30)
/* 80B0DE10  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B0DE14  90 1E 0D 28 */	stw r0, 0xd28(r30)
/* 80B0DE18  38 7E 0D 20 */	addi r3, r30, 0xd20
/* 80B0DE1C  4B 85 41 FD */	bl __ptmf_test
/* 80B0DE20  2C 03 00 00 */	cmpwi r3, 0
/* 80B0DE24  41 82 00 B4 */	beq lbl_80B0DED8
/* 80B0DE28  7F C3 F3 78 */	mr r3, r30
/* 80B0DE2C  39 9E 0D 20 */	addi r12, r30, 0xd20
/* 80B0DE30  4B 85 42 55 */	bl __ptmf_scall
/* 80B0DE34  60 00 00 00 */	nop 
/* 80B0DE38  48 00 00 A0 */	b lbl_80B0DED8
lbl_80B0DE3C:
/* 80B0DE3C  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 80B0DE40  80 9F 00 5C */	lwz r4, 0x5c(r31)
/* 80B0DE44  38 A0 00 00 */	li r5, 0
/* 80B0DE48  38 C0 00 00 */	li r6, 0
/* 80B0DE4C  4B 53 9C D1 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B0DE50  2C 03 FF FF */	cmpwi r3, -1
/* 80B0DE54  41 82 00 84 */	beq lbl_80B0DED8
/* 80B0DE58  80 7F 01 2C */	lwz r3, 0x12c(r31)
/* 80B0DE5C  80 1F 01 30 */	lwz r0, 0x130(r31)
/* 80B0DE60  90 61 00 08 */	stw r3, 8(r1)
/* 80B0DE64  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B0DE68  80 1F 01 34 */	lwz r0, 0x134(r31)
/* 80B0DE6C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B0DE70  38 00 00 03 */	li r0, 3
/* 80B0DE74  B0 1E 0D 76 */	sth r0, 0xd76(r30)
/* 80B0DE78  38 7E 0D 20 */	addi r3, r30, 0xd20
/* 80B0DE7C  4B 85 41 9D */	bl __ptmf_test
/* 80B0DE80  2C 03 00 00 */	cmpwi r3, 0
/* 80B0DE84  41 82 00 14 */	beq lbl_80B0DE98
/* 80B0DE88  7F C3 F3 78 */	mr r3, r30
/* 80B0DE8C  39 9E 0D 20 */	addi r12, r30, 0xd20
/* 80B0DE90  4B 85 41 F5 */	bl __ptmf_scall
/* 80B0DE94  60 00 00 00 */	nop 
lbl_80B0DE98:
/* 80B0DE98  38 00 00 00 */	li r0, 0
/* 80B0DE9C  B0 1E 0D 76 */	sth r0, 0xd76(r30)
/* 80B0DEA0  80 61 00 08 */	lwz r3, 8(r1)
/* 80B0DEA4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B0DEA8  90 7E 0D 20 */	stw r3, 0xd20(r30)
/* 80B0DEAC  90 1E 0D 24 */	stw r0, 0xd24(r30)
/* 80B0DEB0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B0DEB4  90 1E 0D 28 */	stw r0, 0xd28(r30)
/* 80B0DEB8  38 7E 0D 20 */	addi r3, r30, 0xd20
/* 80B0DEBC  4B 85 41 5D */	bl __ptmf_test
/* 80B0DEC0  2C 03 00 00 */	cmpwi r3, 0
/* 80B0DEC4  41 82 00 14 */	beq lbl_80B0DED8
/* 80B0DEC8  7F C3 F3 78 */	mr r3, r30
/* 80B0DECC  39 9E 0D 20 */	addi r12, r30, 0xd20
/* 80B0DED0  4B 85 41 B5 */	bl __ptmf_scall
/* 80B0DED4  60 00 00 00 */	nop 
lbl_80B0DED8:
/* 80B0DED8  7F C3 F3 78 */	mr r3, r30
/* 80B0DEDC  48 00 00 1D */	bl calcFly__10daNpcTkc_cFv
lbl_80B0DEE0:
/* 80B0DEE0  39 61 00 30 */	addi r11, r1, 0x30
/* 80B0DEE4  4B 85 43 45 */	bl _restgpr_29
/* 80B0DEE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B0DEEC  7C 08 03 A6 */	mtlr r0
/* 80B0DEF0  38 21 00 30 */	addi r1, r1, 0x30
/* 80B0DEF4  4E 80 00 20 */	blr 
