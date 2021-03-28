lbl_80B28FB8:
/* 80B28FB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B28FBC  7C 08 02 A6 */	mflr r0
/* 80B28FC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B28FC4  39 61 00 30 */	addi r11, r1, 0x30
/* 80B28FC8  4B 83 92 08 */	b _savegpr_26
/* 80B28FCC  7C 7C 1B 78 */	mr r28, r3
/* 80B28FD0  7C 9A 23 78 */	mr r26, r4
/* 80B28FD4  3B E0 00 00 */	li r31, 0
/* 80B28FD8  3B C0 FF FF */	li r30, -1
/* 80B28FDC  3B A0 00 00 */	li r29, 0
/* 80B28FE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B28FE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B28FE8  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80B28FEC  7F 63 DB 78 */	mr r3, r27
/* 80B28FF0  3C A0 80 B3 */	lis r5, struct_80B2CF74+0x0@ha
/* 80B28FF4  38 A5 CF 74 */	addi r5, r5, struct_80B2CF74+0x0@l
/* 80B28FF8  38 A5 00 C4 */	addi r5, r5, 0xc4
/* 80B28FFC  38 C0 00 03 */	li r6, 3
/* 80B29000  4B 51 F0 EC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B29004  28 03 00 00 */	cmplwi r3, 0
/* 80B29008  41 82 00 08 */	beq lbl_80B29010
/* 80B2900C  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80B29010:
/* 80B29010  7F 63 DB 78 */	mr r3, r27
/* 80B29014  7F 44 D3 78 */	mr r4, r26
/* 80B29018  3C A0 80 B3 */	lis r5, struct_80B2CF74+0x0@ha
/* 80B2901C  38 A5 CF 74 */	addi r5, r5, struct_80B2CF74+0x0@l
/* 80B29020  38 A5 00 C8 */	addi r5, r5, 0xc8
/* 80B29024  38 C0 00 03 */	li r6, 3
/* 80B29028  4B 51 F0 C4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B2902C  28 03 00 00 */	cmplwi r3, 0
/* 80B29030  41 82 00 08 */	beq lbl_80B29038
/* 80B29034  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80B29038:
/* 80B29038  7F 63 DB 78 */	mr r3, r27
/* 80B2903C  7F 44 D3 78 */	mr r4, r26
/* 80B29040  4B 51 ED 0C */	b getIsAddvance__16dEvent_manager_cFi
/* 80B29044  2C 03 00 00 */	cmpwi r3, 0
/* 80B29048  41 82 00 40 */	beq lbl_80B29088
/* 80B2904C  2C 1E 00 03 */	cmpwi r30, 3
/* 80B29050  41 82 00 28 */	beq lbl_80B29078
/* 80B29054  40 80 00 34 */	bge lbl_80B29088
/* 80B29058  2C 1E 00 00 */	cmpwi r30, 0
/* 80B2905C  41 82 00 08 */	beq lbl_80B29064
/* 80B29060  48 00 00 28 */	b lbl_80B29088
lbl_80B29064:
/* 80B29064  7F 83 E3 78 */	mr r3, r28
/* 80B29068  80 9C 0A 7C */	lwz r4, 0xa7c(r28)
/* 80B2906C  38 A0 00 00 */	li r5, 0
/* 80B29070  4B 62 2B 80 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B29074  48 00 00 14 */	b lbl_80B29088
lbl_80B29078:
/* 80B29078  7F 83 E3 78 */	mr r3, r28
/* 80B2907C  80 9C 0A 7C */	lwz r4, 0xa7c(r28)
/* 80B29080  38 A0 00 00 */	li r5, 0
/* 80B29084  4B 62 2B 6C */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80B29088:
/* 80B29088  3C 60 80 B3 */	lis r3, lit_5394@ha
/* 80B2908C  38 83 CF 48 */	addi r4, r3, lit_5394@l
/* 80B29090  80 64 00 00 */	lwz r3, 0(r4)
/* 80B29094  80 04 00 04 */	lwz r0, 4(r4)
/* 80B29098  90 61 00 08 */	stw r3, 8(r1)
/* 80B2909C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B290A0  2C 1E 00 04 */	cmpwi r30, 4
/* 80B290A4  40 80 00 D8 */	bge lbl_80B2917C
/* 80B290A8  2C 1E 00 00 */	cmpwi r30, 0
/* 80B290AC  40 80 00 08 */	bge lbl_80B290B4
/* 80B290B0  48 00 00 CC */	b lbl_80B2917C
lbl_80B290B4:
/* 80B290B4  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B290B8  2C 00 00 01 */	cmpwi r0, 1
/* 80B290BC  41 82 00 2C */	beq lbl_80B290E8
/* 80B290C0  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B290C4  4B 61 C6 38 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B290C8  38 00 00 00 */	li r0, 0
/* 80B290CC  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B290D0  3C 60 80 B3 */	lis r3, lit_4055@ha
/* 80B290D4  C0 03 CE EC */	lfs f0, lit_4055@l(r3)
/* 80B290D8  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B290DC  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B290E0  38 00 00 01 */	li r0, 1
/* 80B290E4  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80B290E8:
/* 80B290E8  38 00 00 00 */	li r0, 0
/* 80B290EC  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B290F0  2C 1E 00 00 */	cmpwi r30, 0
/* 80B290F4  41 82 00 0C */	beq lbl_80B29100
/* 80B290F8  2C 1E 00 02 */	cmpwi r30, 2
/* 80B290FC  40 82 00 3C */	bne lbl_80B29138
lbl_80B29100:
/* 80B29100  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B29104  2C 00 00 00 */	cmpwi r0, 0
/* 80B29108  41 82 00 28 */	beq lbl_80B29130
/* 80B2910C  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B29110  4B 61 C5 EC */	b remove__18daNpcT_ActorMngr_cFv
/* 80B29114  38 00 00 00 */	li r0, 0
/* 80B29118  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B2911C  3C 60 80 B3 */	lis r3, lit_4055@ha
/* 80B29120  C0 03 CE EC */	lfs f0, lit_4055@l(r3)
/* 80B29124  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B29128  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B2912C  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80B29130:
/* 80B29130  38 00 00 00 */	li r0, 0
/* 80B29134  98 1C 0C FF */	stb r0, 0xcff(r28)
lbl_80B29138:
/* 80B29138  93 A1 00 08 */	stw r29, 8(r1)
/* 80B2913C  7F 83 E3 78 */	mr r3, r28
/* 80B29140  38 81 00 08 */	addi r4, r1, 8
/* 80B29144  38 A0 00 00 */	li r5, 0
/* 80B29148  38 C0 00 00 */	li r6, 0
/* 80B2914C  38 E0 00 00 */	li r7, 0
/* 80B29150  4B 62 2B 28 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B29154  2C 03 00 00 */	cmpwi r3, 0
/* 80B29158  41 82 00 24 */	beq lbl_80B2917C
/* 80B2915C  2C 1D 00 00 */	cmpwi r29, 0
/* 80B29160  40 82 00 18 */	bne lbl_80B29178
/* 80B29164  88 1C 09 9A */	lbz r0, 0x99a(r28)
/* 80B29168  28 00 00 01 */	cmplwi r0, 1
/* 80B2916C  40 82 00 10 */	bne lbl_80B2917C
/* 80B29170  3B E0 00 01 */	li r31, 1
/* 80B29174  48 00 00 08 */	b lbl_80B2917C
lbl_80B29178:
/* 80B29178  3B E0 00 01 */	li r31, 1
lbl_80B2917C:
/* 80B2917C  7F E3 FB 78 */	mr r3, r31
/* 80B29180  39 61 00 30 */	addi r11, r1, 0x30
/* 80B29184  4B 83 90 98 */	b _restgpr_26
/* 80B29188  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B2918C  7C 08 03 A6 */	mtlr r0
/* 80B29190  38 21 00 30 */	addi r1, r1, 0x30
/* 80B29194  4E 80 00 20 */	blr 
