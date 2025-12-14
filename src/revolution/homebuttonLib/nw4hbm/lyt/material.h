#ifndef NW4HBM_LYT_MATERIAL_H
#define NW4HBM_LYT_MATERIAL_H

#include "../macros.h"

#include <revolution/types.h>

#include "animation.h"
#include "common.h"
#include "types.h"

#include "../math/types.h"
#include "../ut/Color.h"

#include <revolution/gx.h>
#include <revolution/mtx.h>
#include <revolution/tpl.h>

// context declarations
namespace nw4hbm { namespace lyt { struct ResBlockSet; }}

namespace nw4hbm {
    namespace lyt {
        // forward declarations
        class Material;

        class MaterialResourceNum {
            // methods
        public:
            // cdtors
            /* MaterialResourceNum() = default; */
            /* ~MaterialResourceNum() = default; */

            // methods
            u8 GetTexMapNum() const { return detail::GetBits(bits, 0, 4); }
            u8 GetTexSRTNum() const { return detail::GetBits(bits, 4, 4); }
            u8 GetTexCoordGenNum() const { return detail::GetBits(bits, 8, 4); }
            bool HasTevSwapTable() const { return detail::TestBit(bits, 12); }
            u8 GetIndTexSRTNum() const { return detail::GetBits(bits, 13, 2); }
            u8 GetIndTexStageNum() const { return detail::GetBits(bits, 15, 3); }
            u8 GetTevStageNum() const { return detail::GetBits(bits, 18, 5); }
            bool HasAlphaCompare() const { return detail::TestBit(bits, 23); }
            bool HasBlendMode() const { return detail::TestBit(bits, 24); }
            u8 GetChanCtrlNum() const { return detail::GetBits(bits, 25, 1); }
            u8 GetMatColNum() const { return detail::GetBits(bits, 27, 1); }

            // members
        private:
            // Why was this not just a detail::BitGXNums
            /*	exposition struct
                {
                    u8		texMap		: 4;	// size 4, offset 0x00: 0
                    u8		texSRT		: 4;	// size 4, offset 0x00: 4
                    u8		texCoordGen	: 4;	// size 4, offset 0x00: 8
                    bool	tevSwap		: 1;	// size 1, offset 0x00:12
                    u8		indSRT		: 2;	// size 2, offset 0x00:13
                    u8		indStage	: 3;	// size 3, offset 0x01:15
                    u8		tevStage	: 5;	// size 5, offset 0x00:18
                    bool	alpComp		: 1;	// size 1, offset 0x00:23
                    bool	blendMode	: 1;	// size 1, offset 0x00:24
                    u8		chanCtrl	: 1;	// size 1, offset 0x00:25
                    u32				: 1;
                    u8		matCol		: 1;	// size 1, offset 0x00:27 // And also why is this in
               the wrong place?
                    // 4 bits padding
                };
            */
            u32 bits;
        };  // size 0x04

        namespace res {
            // TODO: Constants for array sizes here, probably. Add that later sometime

            struct Material {
                char name[20];               // size 0x14, offset 0x00
                GXColorS10 tevCols[3];       // size 0x18, offset 0x14
                GXColor tevKCols[4];         // size 0x10, offset 0x2c
                MaterialResourceNum resNum;  // size 0x00, offset 0x3c
            };  // size 0x40

            struct Texture {
                u32 nameStrOffset;  // size 0x04, offset 0x00
                u8 type;            // size 0x01, offset 0x04
                u8 padding[3];
            };  // size 0x08

            struct TexMap {
                u16 texIdx;  // size 0x02, offset 0x00
                u8 wrapS;    // size 0x01, offset 0x02 // GXTexWrapMode
                u8 wrapT;    // size 0x01, offset 0x03 // GXTexWrapMode
            };  // size 0x04
        }  // namespace res

        namespace detail {
            struct BitGXNums {
                u32 texMap : 4;       // size 4, offset 0x00: 0 // u8
                u32 texSRT : 4;       // size 4, offset 0x00: 4 // u8
                u32 texCoordGen : 4;  // size 4, offset 0x00: 8 // u8
                u32 indSRT : 2;       // size 2, offset 0x00:12 // u8
                u32 indStage : 3;     // size 3, offset 0x00:14 // u8
                u32 tevSwap : 1;      // size 1, offset 0x00:17 // bool
                u32 tevStage : 5;     // size 5, offset 0x00:18 // u8
                u32 chanCtrl : 1;     // size 1, offset 0x00:23 // bool
                u32 matCol : 1;       // size 1, offset 0x00:24 // bool
                u32 alpComp : 1;      // size 1, offset 0x00:25 // bool
                u32 blendMode : 1;    // size 1, offset 0x00:26 // bool
                                      /* 5 bits padding */
            };  // size 0x04

            Size GetTextureSize(Material* pMaterial, u8 texMapIdx);
        }  // namespace detail

        struct TexSRT {
            math::VEC2 translate;  // size 0x08, offset 0x00
            f32 rotate;            // size 0x04, offset 0x08
            math::VEC2 scale;      // size 0x08, offset 0x0c
        };  // size 0x14

        class TexCoordGen {
            // methods
        public:
            // cdtors
            TexCoordGen() : reserve() {
                // TODO: What does 60 mean?
                Set(GX_TG_MTX2x4, GX_TG_TEX0, 60);
            }

            /* ~TexCoordGen() = default; */

            // methods
            GXTexGenType GetTexGenType() const { return static_cast<GXTexGenType>(texGenType); }
            GXTexGenSrc GetTexGenSrc() const { return static_cast<GXTexGenSrc>(texGenSrc); }
            u32 GetTexMtx() const { return texMtx; }

            void Set(GXTexGenType aTexGenType, GXTexGenSrc aTexGenSrc, u32 aTexMtx) {
                texGenType = aTexGenType;
                texGenSrc = aTexGenSrc;
                texMtx = aTexMtx;
            }

            // members
        private:
            u8 texGenType;           // size 0x01, offset 0x00 // GXTexGenType
            u8 texGenSrc;            // size 0x01, offset 0x01 // GXTexGenSrc
            u8 texMtx;               // size 0x01, offset 0x02 // ?
            u8 reserve;  // size 0x01, offset 0x03
        };  // size 0x04

        class IndirectStage {
            // methods
        public:
            // cdtors
            IndirectStage() { Set(GX_TEXCOORD0, GX_TEXMAP0, GX_ITS_1, GX_ITS_1); }

            /* ~IndirectStage() = default; */

            // methods
            GXTexCoordID GetTexCoordGen() const { return static_cast<GXTexCoordID>(texCoordGen); }
            GXTexMapID GetTexMap() const { return static_cast<GXTexMapID>(texMap); }
            GXIndTexScale GetScaleS() const { return static_cast<GXIndTexScale>(scaleS); }
            GXIndTexScale GetScaleT() const { return static_cast<GXIndTexScale>(scaleT); }

            void Set(GXTexCoordID aTexCoordGen, GXTexMapID aTexMap, GXIndTexScale aScaleS,
                     GXIndTexScale aScaleT) {
                texCoordGen = aTexCoordGen;

                // possible ERRATUM? GX_TEX_DISABLE is not representable in a u8
                texMap = aTexMap;
                scaleS = aScaleS;
                scaleT = aScaleT;
            }

            // members
        private:
            u8 texCoordGen;  // size 0x01, offset 0x00 // GXTexCoordID
            u8 texMap;       // size 0x01, offset 0x01 // GXTexMapID
            u8 scaleS;       // size 0x01, offset 0x02 // GXIndTexScale
            u8 scaleT;       // size 0x01, offset 0x03 // GXIndTexScale
        };  // size 0x04

        class TevSwapMode {
            // methods
        public:
            // cdtors
            /* TevSwapMode() = default; */
            /* ~TevSwapMode() = default; */

            // methods
            GXTevColorChan GetR() const { return static_cast<GXTevColorChan>(swap & 0x03); }
            GXTevColorChan GetG() const { return static_cast<GXTevColorChan>((swap >> 2) & 0x03); }
            GXTevColorChan GetB() const { return static_cast<GXTevColorChan>((swap >> 4) & 0x03); }
            GXTevColorChan GetA() const { return static_cast<GXTevColorChan>((swap >> 6) & 0x03); }

            void Set(GXTevColorChan r, GXTevColorChan g, GXTevColorChan b, GXTevColorChan a) {
                // no masking
                swap = r | g << 2 | b << 4 | a << 6;
            }

            // members
        private:
            /*	exposition struct
                {
                    GXTevColorChan	a	: 2;	// size 2, offset 0x00:0
                    GXTevColorChan	b	: 2;	// size 2, offset 0x00:2
                    GXTevColorChan	g	: 2;	// size 2, offset 0x00:4
                    GXTevColorChan	r	: 2;	// size 2, offset 0x00:6
                };
            */
            u8 swap;  // size 0x01, offset 0x00
        };  // size 0x01

        class TevStageInOp {
            // methods
        public:
            // cdtors
            /* TevStageInOp() = default; */
            /* ~TevStageInOp() = default; */

            // methods
            u8 GetA() const { return ab & 0x0f; }
            u8 GetB() const { return (ab >> 4) & 0x0f; }
            u8 GetC() const { return cd & 0x0f; }
            u8 GetD() const { return (cd >> 4) & 0x0f; }

            u8 GetScale() const { return (op >> 6) & 0x03; }
            u8 GetBias() const { return (op >> 4) & 0x03; }
            u8 GetOp() const { return op & 0x0f; }

            u8 GetKSel() const { return (cl >> 3) & 0x1f; }
            u8 GetOutReg() const { return (cl >> 1) & 0x03; }
            bool IsClamp() const { return static_cast<bool>(cl & 0x01); }

            void SetIn(u8 a, u8 b, u8 c, u8 d) {
                ab = a | b << 4;
                cd = c | d << 4;
            }

            void SetOp(u8 aOp, u8 bias, u8 scale, bool clamp, u8 outReg, u8 kSel) {
                op = aOp | bias << 4 | scale << 6;

                // result is a byte value, not a boolean value
                cl = (clamp ? 1 : 0) << 0 | outReg << 1 | kSel << 3;
            }

            // members
        private:
            /*	exposition union
                {
                    exposition struct
                    {
                        GXTevColorArg	colorB		: 4;	// size 4, offset 0x00:0
                        GXTevColorArg	colorA		: 4;	// size 4, offset 0x00:4
                    }; // size 0x01
                    exposition struct
                    {
                        GXTevAlphaArg	alphaB		: 4;	// size 4, offset 0x00:0
                        GXTevAlphaArg	alphaA		: 4;	// size 4, offset 0x00:4
                    }; // size 0x01
                }
            */
            u8 ab;  // size 0x01, offset 0x00
                    /*	exposition union
                        {
                            exposition struct
                            {
                                GXTevColorArg	colorC		: 4;	// size 4, offset 0x00:0
                                GXTevColorArg	colorD		: 4;	// size 4, offset 0x00:4
                            }; // size 0x01
                            exposition struct
                            {
                                GXTevAlphaArg	alphaC		: 4;	// size 4, offset 0x00:0
                                GXTevAlphaArg	alphaD		: 4;	// size 4, offset 0x00:4
                            }; // size 0x01
                        }
                    */
            u8 cd;  // size 0x01, offset 0x01
                    /*	exposition struct
                        {
                            GXTevScale			scale		: 2;	// size 2, offset 0x00:0
                            GXTevBias			bias		: 2;	// size 2, offset 0x00:2
                            GXTevOp				op			: 4;	// size 4, offset 0x00:4
                        };
                    */
            u8 op;  // size 0x01, offset 0x02
                    /*	exposition struct
                        {
                            exposition union
                            {
                                GXTevKColorSel	kColorSel	: 5;	// size 5
                                GXTevKAlphaSel	kAlphaSel	: 5;	// size 5
                            }; // size 5 bits, offset 0x00:0
                            GXTevRegID			outReg		: 2;	// size 2, offset 0x00:5
                            bool				clamp		: 1;	// size 1, offset 0x00:7
                        };
                    */
            u8 cl;  // size 0x01, offset 0x03
        };  // size 0x04

        class TevStage {
            // methods
        public:
            // cdtors
            TevStage() {
                SetOrder(GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0, GX_TEV_SWAP0, GX_TEV_SWAP0);
                SetColorIn(GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_RASC);
                SetAlphaIn(GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_RASA);
                SetColorOp(GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, TRUE, GX_TEVPREV,
                           GX_TEV_KCSEL_K0);
                SetAlphaOp(GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, TRUE, GX_TEVPREV,
                           GX_TEV_KASEL_K0_R);
                SetIndirect(GX_INDTEXSTAGE0, GX_ITF_8, GX_ITB_NONE, GX_ITM_OFF, GX_ITW_OFF,
                            GX_ITW_OFF, FALSE, FALSE, GX_ITBA_OFF);
            }

            /* ~TevStage() = default; */

            // methods
            GXTexCoordID GetTexCoordGen() const { return static_cast<GXTexCoordID>(texCoordGen); }
            GXChannelID GetColorChan() const { return static_cast<GXChannelID>(colChan); }

            // shift left is for swapSel.texMapDisable -> GX_TEXMAP_DISABLE
            GXTexMapID GetTexMap() const {
                return static_cast<GXTexMapID>((swapSel & 1) << 8 | texMap);
            }

            GXTevSwapSel GetTexSwapSel() const {
                return static_cast<GXTevSwapSel>((swapSel >> 3) & 0x03);
            }
            GXTevSwapSel GetRasSwapSel() const {
                return static_cast<GXTevSwapSel>((swapSel >> 1) & 0x03);
            }

            GXTevColorArg GetColorInA() const { return static_cast<GXTevColorArg>(colIn.GetA()); }
            GXTevColorArg GetColorInB() const { return static_cast<GXTevColorArg>(colIn.GetB()); }
            GXTevColorArg GetColorInC() const { return static_cast<GXTevColorArg>(colIn.GetC()); }
            GXTevColorArg GetColorInD() const { return static_cast<GXTevColorArg>(colIn.GetD()); }
            GXTevOp GetColorOp() const { return static_cast<GXTevOp>(colIn.GetOp()); }
            GXTevBias GetColorBias() const { return static_cast<GXTevBias>(colIn.GetBias()); }
            GXTevScale GetColorScale() const { return static_cast<GXTevScale>(colIn.GetScale()); }
            bool IsColorClamp() const { return colIn.IsClamp(); }
            GXTevRegID GetColorOutReg() const { return static_cast<GXTevRegID>(colIn.GetOutReg()); }
            GXTevKColorSel GetKColorSel() const {
                return static_cast<GXTevKColorSel>(colIn.GetKSel());
            }

            GXTevAlphaArg GetAlphaInA() const { return static_cast<GXTevAlphaArg>(alpIn.GetA()); }
            GXTevAlphaArg GetAlphaInB() const { return static_cast<GXTevAlphaArg>(alpIn.GetB()); }
            GXTevAlphaArg GetAlphaInC() const { return static_cast<GXTevAlphaArg>(alpIn.GetC()); }
            GXTevAlphaArg GetAlphaInD() const { return static_cast<GXTevAlphaArg>(alpIn.GetD()); }
            GXTevOp GetAlphaOp() const { return static_cast<GXTevOp>(alpIn.GetOp()); }
            GXTevBias GetAlphaBias() const { return static_cast<GXTevBias>(alpIn.GetBias()); }
            GXTevScale GetAlphaScale() const { return static_cast<GXTevScale>(alpIn.GetScale()); }
            bool IsAlphaClamp() const { return alpIn.IsClamp(); }
            GXTevRegID GetAlphaOutReg() const { return static_cast<GXTevRegID>(alpIn.GetOutReg()); }
            GXTevKAlphaSel GetKAlphaSel() const {
                return static_cast<GXTevKAlphaSel>(alpIn.GetKSel());
            }

            GXIndTexStageID GetIndStage() const { return static_cast<GXIndTexStageID>(indStage); }

            GXIndTexMtxID GetIndMtxSel() const {
                return static_cast<GXIndTexMtxID>((indBiMt >> 3) & 0x0f);
            }
            GXIndTexBiasSel GetIndBiasSel() const {
                return static_cast<GXIndTexBiasSel>(indBiMt & 0x07);
            }

            GXIndTexWrap GetIndWrapS() const { return static_cast<GXIndTexWrap>(indWrap & 0x07); }
            GXIndTexWrap GetIndWrapT() const {
                return static_cast<GXIndTexWrap>((indWrap >> 3) & 0x07);
            }

            GXIndTexAlphaSel GetIndAlphaSel() const {
                return static_cast<GXIndTexAlphaSel>((indFoAdUtAl >> 4) & 0x03);
            }
            bool IsIndUtcLod() const { return static_cast<bool>((indFoAdUtAl >> 3) & 0x01); }
            bool IsIndAddPrev() const { return static_cast<bool>((indFoAdUtAl >> 2) & 0x01); }
            GXIndTexFormat GetIndFormat() const {
                return static_cast<GXIndTexFormat>(indFoAdUtAl & 0x03);
            }

            void SetOrder(GXTexCoordID aTexCoordGen, GXTexMapID aTexMap, GXChannelID aColChan,
                          GXTevSwapSel rasSel, GXTevSwapSel texSel) {
                texCoordGen = aTexCoordGen;
                colChan = aColChan;
                texMap = aTexMap;
                // shift right is for aTexMap == GX_TEX_DISABLE
                swapSel = aTexMap >> 8 | rasSel << 1 | texSel << 3;
            }

            void SetColorIn(GXTevColorArg a, GXTevColorArg b, GXTevColorArg c, GXTevColorArg d) {
                colIn.SetIn(a, b, c, d);
            }

            void SetColorOp(GXTevOp op, GXTevBias bias, GXTevScale scale, bool clamp,
                            GXTevRegID outReg, GXTevKColorSel kSel) {
                colIn.SetOp(op, bias, scale, clamp, outReg, kSel);
            }

            void SetAlphaIn(GXTevAlphaArg a, GXTevAlphaArg b, GXTevAlphaArg c, GXTevAlphaArg d) {
                alpIn.SetIn(a, b, c, d);
            }

            void SetAlphaOp(GXTevOp op, GXTevBias bias, GXTevScale scale, bool clamp,
                            GXTevRegID outReg, GXTevKAlphaSel kSel) {
                alpIn.SetOp(op, bias, scale, clamp, outReg, kSel);
            }

            void SetIndirect(GXIndTexStageID stage, GXIndTexFormat format, GXIndTexBiasSel biasSel,
                             GXIndTexMtxID mtxSel, GXIndTexWrap wrapS, GXIndTexWrap wrapT,
                             bool addPrev, bool utcLod, GXIndTexAlphaSel alphaSel) {
                // result of these ternaries is a byte value, not a boolean value
                indStage = stage;
                indBiMt = biasSel | mtxSel << 3;
                indWrap = wrapS | wrapT << 3;
                indFoAdUtAl =
                    format | (addPrev ? 1 : 0) << 2 | (utcLod ? 1 : 0) << 3 | alphaSel << 4;
            }

            // members
        private:
            u8 texCoordGen;      // size 0x01, offset 0x00 // GXTexCoordID
            u8 colChan;          // size 0x01, offset 0x01 // GXChannelID
            u8 texMap;           // size 0x01, offset 0x02 // GXTexMap
                                 /*	exposition struct
                                     {
                                         u8								: 3;
                                         GXTevSwapSel		texSel			: 2;	// size 2, offset 0x00:3
                                         GXTevSwapSel		rasSel			: 2;	// size 2, offset 0x00:5
                                         bool				texMapDisable	: 1;	// size 2, offset 0x00:7
                                     };
                                 */
            u8 swapSel;          // size 0x01, offset 0x03
            TevStageInOp colIn;  // size 0x04, offset 0x04
            TevStageInOp alpIn;  // size 0x04, offset 0x08
            u8 indStage;         // size 0x01, offset 0x0c // GXIndTexStageID
                                 /*	exposition struct
                                     {
                                         u8								: 1;
                                         GXIndTexMtxID		mtxSel			: 4;	// size 4, offset 0x00:1
                                         GXIndTexBiasSel		biasSel			: 3;	// size 3, offset 0x00:5
                                     };
                                 */
            u8 indBiMt;          // size 0x01, offset 0x0d
                                 /*	exposition struct
                                     {
                                         u8								: 2;
                                         GXIndTexWrap		wrapT			: 3;	// size 3, offset 0x00:2
                                         GXIndTexWrap		wrapS			: 3;	// size 3, offset 0x00:5
                                     };
                                 */
            u8 indWrap;          // size 0x01, offset 0x0e
                                 /*	exposition struct
                                     {
                                         u8								: 2;
                                         GXIndTexAlphaSel	alphaSel		: 2;	// size 2, offset 0x00:2
                                         bool				utcLod			: 1;	// size 1, offset 0x00:4
                                         bool				addPrev			: 1;	// size 1, offset 0x00:5
                                         GXIndTexFomat		format			: 2;	// size 2, offset 0x00:6
                                     };
                                     // 2009 Winner of the Goofiest Variable Name
                                     // This award was re-certified on November 27th, 2025.
                                 */
            u8 indFoAdUtAl;      // size 0x01, offset 0x0f
        };  // size 0x10

        class ChanCtrl {
            // methods
        public:
            // cdtors
            ChanCtrl() : reserve1(), reserve2() { Set(GX_SRC_VTX, GX_SRC_VTX); }

            /* ~ChanCtrl() = default; */

            // methods
            GXColorSrc GetColorSrc() const { return static_cast<GXColorSrc>(matSrcCol); }
            GXColorSrc GetAlphaSrc() const { return static_cast<GXColorSrc>(matSrcAlp); }

            void Set(GXColorSrc colSrc, GXColorSrc alpSrc) {
                matSrcCol = colSrc;
                matSrcAlp = alpSrc;
            }

            // members
        private:
            u8 matSrcCol;             // size 0x01, offset 0x00 // GXColorSrc
            u8 matSrcAlp;             // size 0x01, offset 0x01 // GXColorSrc
            u8 reserve1;  // size 0x01, offset 0x02
            u8 reserve2;  // size 0x01, offset 0x03
        };  // size 0x04

        class AlphaCompare {
            // methods
        public:
            // cdtors
            AlphaCompare() { Set(GX_ALWAYS, 0, GX_AOP_AND, GX_ALWAYS, 0); }

            /* ~AlphaCompare() = default; */

            // methods
            GXCompare GetComp0() const { return static_cast<GXCompare>(comp & 0x0f); }
            GXCompare GetComp1() const { return static_cast<GXCompare>(comp >> 4 & 0x0f); }
            GXAlphaOp GetOp() const { return static_cast<GXAlphaOp>(op); }
            u8 GetRef0() const { return ref0; }
            u8 GetRef1() const { return ref1; }

            void Set(GXCompare aComp0, u8 aRef0, GXAlphaOp aOp, GXCompare aComp1, u8 aRef1) {
                comp = aComp0 | aComp1 << 4;
                op = aOp;
                ref0 = aRef0;
                ref1 = aRef1;
            }

            // members
        private:
            /*	exposition struct
                {
                    GXCompare	comp1	: 4;	// size 4, offset 0x00:0
                    GXCompare	comp0	: 4;	// size 4, offset 0x00:4
                };
            */
            u8 comp;  // size 0x01, offset 0x00
            u8 op;    // size 0x01, offset 0x01 // GXAlphaOp
            u8 ref0;  // size 0x01, offset 0x02
            u8 ref1;  // size 0x01, offset 0x03
        };  // size 0x04

        class BlendMode {
            // methods
        public:
            // cdtors
            BlendMode() { Set(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_SET); }

            /* ~BlendMode() = default; */

            // methods
            GXBlendMode GetType() const { return static_cast<GXBlendMode>(type); }
            GXBlendFactor GetSrcFactor() const { return static_cast<GXBlendFactor>(srcFactor); }
            GXBlendFactor GetDstFactor() const { return static_cast<GXBlendFactor>(dstFactor); }
            GXLogicOp GetOp() const { return static_cast<GXLogicOp>(op); }

            void Set(GXBlendMode aType, GXBlendFactor aSrcFactor, GXBlendFactor aDstFactor,
                     GXLogicOp aOp) {
                type = aType;
                srcFactor = aSrcFactor;
                dstFactor = aDstFactor;
                op = aOp;
            }

            // members
        private:
            u8 type;       // size 0x01, offset 0x00 // GXBlendMode
            u8 srcFactor;  // size 0x01, offset 0x01 // GXBlendFactor
            u8 dstFactor;  // size 0x01, offset 0x02 // GXBlendFactor
            u8 op;         // size 0x01, offset 0x03 // GXLogicOp
        };  // size 0x04

        class Material {
            // methods
        public:
            // cdtors
            Material();
            Material(res::Material const* pRes, ResBlockSet const& resBlockSet);
            virtual ~Material();

            // virtual function ordering
            // vtable Material
            virtual bool SetupGX(bool bModVtxCol, u8 alpha);
            virtual void BindAnimation(AnimTransform* pAnimTrans);
            virtual void UnbindAnimation(AnimTransform* pAnimTrans);
            virtual void UnbindAllAnimation();
            virtual void Animate();
            virtual AnimationLink* FindAnimationLink(AnimTransform* pAnimTrans);
            virtual void SetAnimationEnable(AnimTransform* pAnimTrans, bool bEnable);

            // methods
            char const* GetName() const { return mName; }
            GXColorS10 GetTevColor(u32 idx) const { return mTevCols[idx]; }

            u8 GetTextureCap() const { return mGXMemCap.texMap; }
            u8 GetTexSRTCap() const { return mGXMemCap.texSRT; }
            u8 GetTexCoordGenCap() const { return mGXMemCap.texCoordGen; }
            u8 GetIndTexSRTCap() const { return mGXMemCap.indSRT; }
            bool IsTevSwapCap() const { return static_cast<bool>(mGXMemCap.tevSwap); }
            bool IsBlendModeCap() const { return static_cast<bool>(mGXMemCap.blendMode); }
            bool IsAlphaCompareCap() const { return static_cast<bool>(mGXMemCap.alpComp); }
            bool IsMatColorCap() const { return static_cast<bool>(mGXMemCap.matCol); }
            bool IsChanCtrlCap() const { return static_cast<bool>(mGXMemCap.chanCtrl); }

            u8 GetTextureNum() const { return mGXMemNum.texMap; }

            bool IsUserAllocated() const { return mbUserAllocated; }

            void SetName(char const* name);

            GXTexObj* GetTexMapAry();
            GXTexObj const* GetTexMapAry() const;
            TexSRT* GetTexSRTAry();
            TexSRT const* GetTexSRTAry() const;
            TexCoordGen* GetTexCoordGenAry();
            TexCoordGen const* GetTexCoordGenAry() const;
            ChanCtrl* GetChanCtrlAry();
            ChanCtrl const* GetChanCtrlAry() const;
            ut::Color* GetMatColAry();
            ut::Color const* GetMatColAry() const;
            TevSwapMode* GetTevSwapAry();
            TevSwapMode const* GetTevSwapAry() const;
            AlphaCompare* GetAlphaComparePtr();
            AlphaCompare const* GetAlphaComparePtr() const;
            BlendMode* GetBlendModePtr();
            BlendMode const* GetBlendModePtr() const;
            IndirectStage* GetIndirectStageAry();
            IndirectStage const* GetIndirectStageAry() const;
            TexSRT* GetIndTexSRTAry();
            TexSRT const* GetIndTexSRTAry() const;
            TevStage* GetTevStageAry();
            TevStage const* GetTevStageAry() const;

            void GetTexture(GXTexObj* pTexObj, u8 texMapIdx) const;
            s16 GetColorElement(u32 colorType) const;

            void SetTextureNum(u8 num);
            void SetTexCoordGenNum(u8 num);
            void SetIndStageNum(u8 num);
            void SetTevStageNum(u8 num);

            void SetTexture(u8 texMapIdx, TPLPalette* pTplRes);
            void SetTexture(u8 texMapIdx, GXTexObj const& texObj);
            void SetTextureNoWrap(u8 texMapIdx, TPLPalette* pTplRes);
            void SetTextureNoWrap(u8 texMapIdx, GXTexObj const& texObj);
            void SetColorElement(u32 colorType, s16 value);

            void SetTexCoordGen(u32 idx, TexCoordGen value) { GetTexCoordGenAry()[idx] = value; }

            void SetTexSRTElement(u32 texSRTIdx, u32 eleIdx, f32 value) {
                f32* srtAry = reinterpret_cast<f32*>(&GetTexSRTAry()[texSRTIdx]);

                srtAry[eleIdx] = value;
            }

            void SetIndTexSRTElement(u32 texSRTIdx, u32 eleIdx, f32 value) {
                f32* srtAry = reinterpret_cast<f32*>(&GetIndTexSRTAry()[texSRTIdx]);

                srtAry[eleIdx] = value;
            }

            void Init();
            void InitBitGXNums(detail::BitGXNums* ptr);

            void ReserveGXMem(u8 texMapNum, u8 texSRTNum, u8 texCoordGenNum, u8 tevStageNum,
                              bool allocTevSwap, u8 indStageNum, u8 indSRTNum, bool allocChanCtrl,
                              bool allocMatCol, bool allocAlpComp, bool allocBlendMode);

            void AddAnimationLink(AnimationLink* pAnimationLink);

            // TODO: And then propagate those constants down over here

            // members
        private:
            char mName[20];                     // size 0x14, offset 0x04
            AnimationLink::LinkList mAnimList;  // size 0x0c, offset 0x18
            GXColorS10 mTevCols[3];             // size 0x18, offset 0x24
            ut::Color mTevKCols[4];             // size 0x10, offset 0x3c
            detail::BitGXNums mGXMemCap;        // size 0x04, offset 0x4c
            detail::BitGXNums mGXMemNum;        // size 0x04, offset 0x50
            bool mbUserAllocated;               // size 0x01, offset 0x54
            /* 3 bytes padding */
            void* mpGXMem;  // size 0x04, offset 0x58
        };  // size 0x5c
    }  // namespace lyt
}  // namespace nw4hbm

#endif  // NW4HBM_LYT_MATERIAL_H
