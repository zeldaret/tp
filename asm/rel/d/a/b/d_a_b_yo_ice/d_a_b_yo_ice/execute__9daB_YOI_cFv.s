lbl_8063D350:
/* 8063D350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063D354  7C 08 02 A6 */	mflr r0
/* 8063D358  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063D35C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063D360  7C 7F 1B 78 */	mr r31, r3
/* 8063D364  88 03 06 AE */	lbz r0, 0x6ae(r3)
/* 8063D368  28 00 00 00 */	cmplwi r0, 0
/* 8063D36C  41 82 00 5C */	beq lbl_8063D3C8
/* 8063D370  4B B4 42 D1 */	bl dCam_getBody__Fv
/* 8063D374  7F E4 FB 78 */	mr r4, r31
/* 8063D378  4B B4 41 BD */	bl ForceLockOn__9dCamera_cFP10fopAc_ac_c
/* 8063D37C  88 7F 06 AE */	lbz r3, 0x6ae(r31)
/* 8063D380  38 03 FF FF */	addi r0, r3, -1
/* 8063D384  98 1F 06 AE */	stb r0, 0x6ae(r31)
/* 8063D388  88 1F 06 AE */	lbz r0, 0x6ae(r31)
/* 8063D38C  28 00 00 00 */	cmplwi r0, 0
/* 8063D390  40 82 00 30 */	bne lbl_8063D3C0
/* 8063D394  4B B4 42 AD */	bl dCam_getBody__Fv
/* 8063D398  4B B4 41 69 */	bl GetForceLockOnActor__9dCamera_cFv
/* 8063D39C  7C 03 F8 40 */	cmplw r3, r31
/* 8063D3A0  40 82 00 10 */	bne lbl_8063D3B0
/* 8063D3A4  4B B4 42 9D */	bl dCam_getBody__Fv
/* 8063D3A8  7F E4 FB 78 */	mr r4, r31
/* 8063D3AC  4B B4 41 F1 */	bl ForceLockOff__9dCamera_cFP10fopAc_ac_c
lbl_8063D3B0:
/* 8063D3B0  7F E3 FB 78 */	mr r3, r31
/* 8063D3B4  4B 9D C8 C9 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8063D3B8  38 00 00 05 */	li r0, 5
/* 8063D3BC  98 1F 06 AE */	stb r0, 0x6ae(r31)
lbl_8063D3C0:
/* 8063D3C0  38 60 00 01 */	li r3, 1
/* 8063D3C4  48 00 00 5C */	b lbl_8063D420
lbl_8063D3C8:
/* 8063D3C8  80 7F 06 A4 */	lwz r3, 0x6a4(r31)
/* 8063D3CC  2C 03 00 00 */	cmpwi r3, 0
/* 8063D3D0  41 82 00 0C */	beq lbl_8063D3DC
/* 8063D3D4  38 03 FF FF */	addi r0, r3, -1
/* 8063D3D8  90 1F 06 A4 */	stw r0, 0x6a4(r31)
lbl_8063D3DC:
/* 8063D3DC  80 7F 06 A8 */	lwz r3, 0x6a8(r31)
/* 8063D3E0  2C 03 00 00 */	cmpwi r3, 0
/* 8063D3E4  41 82 00 0C */	beq lbl_8063D3F0
/* 8063D3E8  38 03 FF FF */	addi r0, r3, -1
/* 8063D3EC  90 1F 06 A8 */	stw r0, 0x6a8(r31)
lbl_8063D3F0:
/* 8063D3F0  A0 7F 06 A0 */	lhz r3, 0x6a0(r31)
/* 8063D3F4  28 03 00 00 */	cmplwi r3, 0
/* 8063D3F8  41 82 00 0C */	beq lbl_8063D404
/* 8063D3FC  38 03 FF FF */	addi r0, r3, -1
/* 8063D400  B0 1F 06 A0 */	sth r0, 0x6a0(r31)
lbl_8063D404:
/* 8063D404  7F E3 FB 78 */	mr r3, r31
/* 8063D408  4B FF F9 89 */	bl action__9daB_YOI_cFv
/* 8063D40C  7F E3 FB 78 */	mr r3, r31
/* 8063D410  4B FF FC B9 */	bl mtx_set__9daB_YOI_cFv
/* 8063D414  7F E3 FB 78 */	mr r3, r31
/* 8063D418  4B FF FD 99 */	bl cc_set__9daB_YOI_cFv
/* 8063D41C  38 60 00 01 */	li r3, 1
lbl_8063D420:
/* 8063D420  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063D424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063D428  7C 08 03 A6 */	mtlr r0
/* 8063D42C  38 21 00 10 */	addi r1, r1, 0x10
/* 8063D430  4E 80 00 20 */	blr 
