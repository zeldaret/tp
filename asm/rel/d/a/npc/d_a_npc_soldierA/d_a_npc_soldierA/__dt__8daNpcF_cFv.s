lbl_80AF1FB4:
/* 80AF1FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF1FB8  7C 08 02 A6 */	mflr r0
/* 80AF1FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF1FC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF1FC4  93 C1 00 08 */	stw r30, 8(r1)
/* 80AF1FC8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AF1FCC  7C 9F 23 78 */	mr r31, r4
/* 80AF1FD0  41 82 02 14 */	beq lbl_80AF21E4
/* 80AF1FD4  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 80AF1FD8  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 80AF1FDC  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80AF1FE0  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80AF1FE4  38 80 FF FF */	li r4, -1
/* 80AF1FE8  4B 58 5C F4 */	b __dt__11dBgS_LinChkFv
/* 80AF1FEC  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80AF1FF0  38 80 FF FF */	li r4, -1
/* 80AF1FF4  4B 58 55 FC */	b __dt__11dBgS_GndChkFv
/* 80AF1FF8  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80AF1FFC  38 80 FF FF */	li r4, -1
/* 80AF2000  4B 77 5C 94 */	b __dt__11cBgS_GndChkFv
/* 80AF2004  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80AF2008  38 80 FF FF */	li r4, -1
/* 80AF200C  4B 75 7F 3C */	b __dt__10dMsgFlow_cFv
/* 80AF2010  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80AF2014  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AF2018  38 84 1F 34 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AF201C  38 A0 00 06 */	li r5, 6
/* 80AF2020  38 C0 00 03 */	li r6, 3
/* 80AF2024  4B 86 FC C4 */	b __destroy_arr
/* 80AF2028  38 7E 09 08 */	addi r3, r30, 0x908
/* 80AF202C  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AF2030  38 84 1F 34 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AF2034  38 A0 00 06 */	li r5, 6
/* 80AF2038  38 C0 00 03 */	li r6, 3
/* 80AF203C  4B 86 FC AC */	b __destroy_arr
/* 80AF2040  38 7E 08 54 */	addi r3, r30, 0x854
/* 80AF2044  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha
/* 80AF2048  38 84 1F 74 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AF204C  38 A0 00 0C */	li r5, 0xc
/* 80AF2050  38 C0 00 03 */	li r6, 3
/* 80AF2054  4B 86 FC 94 */	b __destroy_arr
/* 80AF2058  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80AF205C  3C 80 80 AF */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80AF2060  38 84 1D E0 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80AF2064  38 A0 00 08 */	li r5, 8
/* 80AF2068  38 C0 00 05 */	li r6, 5
/* 80AF206C  4B 86 FC 7C */	b __destroy_arr
/* 80AF2070  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80AF2074  41 82 00 10 */	beq lbl_80AF2084
/* 80AF2078  3C 60 80 AF */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 80AF207C  38 03 2A A8 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 80AF2080  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80AF2084:
/* 80AF2084  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80AF2088  41 82 00 28 */	beq lbl_80AF20B0
/* 80AF208C  3C 60 80 AF */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80AF2090  38 03 2A 9C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80AF2094  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80AF2098  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80AF209C  38 80 FF FF */	li r4, -1
/* 80AF20A0  4B 77 CE 78 */	b __dt__8cM3dGCirFv
/* 80AF20A4  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80AF20A8  38 80 00 00 */	li r4, 0
/* 80AF20AC  4B 77 60 04 */	b __dt__13cBgS_PolyInfoFv
lbl_80AF20B0:
/* 80AF20B0  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80AF20B4  41 82 00 54 */	beq lbl_80AF2108
/* 80AF20B8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AF20BC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80AF20C0  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80AF20C4  38 03 00 20 */	addi r0, r3, 0x20
/* 80AF20C8  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80AF20CC  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80AF20D0  41 82 00 24 */	beq lbl_80AF20F4
/* 80AF20D4  3C 60 80 AF */	lis r3, __vt__10dCcD_GStts@ha
/* 80AF20D8  38 03 2A 90 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AF20DC  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80AF20E0  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80AF20E4  41 82 00 10 */	beq lbl_80AF20F4
/* 80AF20E8  3C 60 80 AF */	lis r3, __vt__10cCcD_GStts@ha
/* 80AF20EC  38 03 2A 84 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AF20F0  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80AF20F4:
/* 80AF20F4  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80AF20F8  41 82 00 10 */	beq lbl_80AF2108
/* 80AF20FC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AF2100  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AF2104  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80AF2108:
/* 80AF2108  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80AF210C  41 82 00 2C */	beq lbl_80AF2138
/* 80AF2110  3C 60 80 AF */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80AF2114  38 63 2A 60 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80AF2118  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80AF211C  38 03 00 0C */	addi r0, r3, 0xc
/* 80AF2120  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80AF2124  38 03 00 18 */	addi r0, r3, 0x18
/* 80AF2128  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80AF212C  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80AF2130  38 80 00 00 */	li r4, 0
/* 80AF2134  4B 58 3E 60 */	b __dt__9dBgS_AcchFv
lbl_80AF2138:
/* 80AF2138  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80AF213C  41 82 00 20 */	beq lbl_80AF215C
/* 80AF2140  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80AF2144  41 82 00 18 */	beq lbl_80AF215C
/* 80AF2148  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80AF214C  41 82 00 10 */	beq lbl_80AF215C
/* 80AF2150  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AF2154  38 03 2A 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AF2158  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80AF215C:
/* 80AF215C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80AF2160  41 82 00 20 */	beq lbl_80AF2180
/* 80AF2164  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80AF2168  41 82 00 18 */	beq lbl_80AF2180
/* 80AF216C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80AF2170  41 82 00 10 */	beq lbl_80AF2180
/* 80AF2174  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AF2178  38 03 2A 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AF217C  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80AF2180:
/* 80AF2180  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80AF2184  41 82 00 20 */	beq lbl_80AF21A4
/* 80AF2188  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80AF218C  41 82 00 18 */	beq lbl_80AF21A4
/* 80AF2190  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80AF2194  41 82 00 10 */	beq lbl_80AF21A4
/* 80AF2198  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AF219C  38 03 2A 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AF21A0  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80AF21A4:
/* 80AF21A4  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80AF21A8  41 82 00 20 */	beq lbl_80AF21C8
/* 80AF21AC  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80AF21B0  41 82 00 18 */	beq lbl_80AF21C8
/* 80AF21B4  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80AF21B8  41 82 00 10 */	beq lbl_80AF21C8
/* 80AF21BC  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AF21C0  38 03 2A 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AF21C4  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80AF21C8:
/* 80AF21C8  7F C3 F3 78 */	mr r3, r30
/* 80AF21CC  38 80 00 00 */	li r4, 0
/* 80AF21D0  4B 52 6A BC */	b __dt__10fopAc_ac_cFv
/* 80AF21D4  7F E0 07 35 */	extsh. r0, r31
/* 80AF21D8  40 81 00 0C */	ble lbl_80AF21E4
/* 80AF21DC  7F C3 F3 78 */	mr r3, r30
/* 80AF21E0  4B 7D CB 5C */	b __dl__FPv
lbl_80AF21E4:
/* 80AF21E4  7F C3 F3 78 */	mr r3, r30
/* 80AF21E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF21EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AF21F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF21F4  7C 08 03 A6 */	mtlr r0
/* 80AF21F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF21FC  4E 80 00 20 */	blr 
